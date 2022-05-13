package fr.uga.pddl4j.examples.asp;

import fr.uga.pddl4j.heuristics.state.StateHeuristic;
import fr.uga.pddl4j.parser.ParsedProblem;
import fr.uga.pddl4j.plan.Plan;
import fr.uga.pddl4j.plan.SequentialPlan;
import fr.uga.pddl4j.planners.AbstractPlanner;
import fr.uga.pddl4j.planners.Planner;
import fr.uga.pddl4j.planners.PlannerConfiguration;
import fr.uga.pddl4j.planners.SearchStrategy;
import fr.uga.pddl4j.planners.statespace.search.StateSpaceSearch;
import fr.uga.pddl4j.problem.ADLProblem;
import fr.uga.pddl4j.problem.State;
import fr.uga.pddl4j.problem.operator.Action;
import fr.uga.pddl4j.problem.operator.ConditionalEffect;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import picocli.CommandLine;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.Random;
import java.util.ArrayList;

import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;

/**
 * The class is an example. It shows how to create a simple A* search planner able to
 * solve an ADL problem by choosing the heuristic to used and its weight.
 *
 * @author D. Pellier
 * @version 4.0 - 30.11.2021
 */

@CommandLine.Command(name = "ASP",
        version = "ASP 1.0",
        description = "Solves a specified planning problem using A* search strategy.",
        sortOptions = false,
        mixinStandardHelpOptions = true,
        headerHeading = "Usage:%n",
        synopsisHeading = "%n",
        descriptionHeading = "%nDescription:%n%n",
        parameterListHeading = "%nParameters:%n",
        optionListHeading = "%nOptions:%n")
public class ASP extends AbstractPlanner<ADLProblem> {

    /**
     * The class logger.
     */
    private static final Logger LOGGER = LogManager.getLogger(ASP.class.getName());
    /**
     * The weight of the heuristic.
     */
    private double heuristicWeight;

    /**
     * The name of the heuristic used by the planner.
     */
    private StateHeuristic.Name heuristic;
    /**
     * Instantiates the planning problem from a parsed problem.
     *
     * @param problem the problem to instantiate.
     * @return the instantiated planning problem or null if the problem cannot be instantiated.
     */
    @Override
    public ADLProblem instantiate(ParsedProblem problem) {
        final ADLProblem pb = new ADLProblem(problem);
        pb.instantiate();
        return pb;
    }
    /**
     * Sets the weight of the heuristic.
     *
     * @param weight the weight of the heuristic. The weight must be greater than 0.
     * @throws IllegalArgumentException if the weight is strictly less than 0.
     */
    @CommandLine.Option(names = { "-w", "--weight" }, defaultValue = "1.0",
            paramLabel = "<weight>", description = "Set the weight of the heuristic (preset 1.0).")
    public void setHeuristicWeight(final double weight) {
        if (weight <= 0) {
            throw new IllegalArgumentException("Weight <= 0");
        }
        this.heuristicWeight = weight;
    }

    /**
     * Set the name of heuristic used by the planner to the solve a planning problem.
     *
     * @param heuristic the name of the heuristic.
     */
    @CommandLine.Option(names = { "-e", "--heuristic" }, defaultValue = "FAST_FORWARD",
            description = "Set the heuristic : AJUSTED_SUM, AJUSTED_SUM2, AJUSTED_SUM2M, COMBO, "
                    + "MAX, FAST_FORWARD SET_LEVEL, SUM, SUM_MUTEX (preset: FAST_FORWARD)")
    public void setHeuristic(StateHeuristic.Name heuristic)  {
        this.heuristic = heuristic;
    }

    /**
     * Returns the name of the heuristic used by the planner to solve a planning problem.
     *
     * @return the name of the heuristic used by the planner to solve a planning problem.
     */
    public final StateHeuristic.Name getHeuristic() {
        return this.heuristic;
    }

    /**
     * Returns the weight of the heuristic.
     *
     * @return the weight of the heuristic.
     */
    public final double getHeuristicWeight() {
        return this.heuristicWeight;
    }

    public Plan arvand(ADLProblem problem) {

        int MAX_STEPS = 10;

        // First we create an instance of the heuristic to use to guide the search
        final StateHeuristic heuristic = StateHeuristic.getInstance(this.getHeuristic(), problem);

        // We get the initial state from the planning problem
        final State init = new State(problem.getInitialState());

        int count = 0;

        final double weight =0.9;// this.getHeuristicWeight();

        // We create the root node of the tree search
        final Node root = new Node(init, null, -1, 0, heuristic.estimate(init, problem.getGoal()));
        double hmin  = root.getHeuristic();
        Node current = root;
        //current.setAction(-1);

        // We add the root to the list of pending nodes
        Plan plan = null;

        // We set the timeout in ms allocated to the search
        final int timeout = this.getTimeout() * 1000;
        long time = 0;
        long timeStart = System.currentTimeMillis();
        double hcurrent = 0;
        int couche = 0;
        // We start the search
        while (!current.satisfy(problem.getGoal()) && time < timeout) {
            List<Action> list = new ArrayList<>();
            for (Action a : problem.getActions()) {
                if(a.isApplicable(current)){
                    list.add(a);
                }
            }
            if (count >= MAX_STEPS || list == null || hcurrent>1000){
                hmin  = root.getHeuristic();
                current = root;
                count = 0;
                couche = 0;
            }
            // We pop the first node in the pending list open
            current = MonteCarloRandomWalk(current, problem);
            hcurrent  = heuristic.estimate(current, problem.getGoal());
            System.out.println("count = " + count + "hmin = " + hmin + "hcurrent = "+ hcurrent + "cur "+current.getCost()+"  weight  " + weight*current.getCost());

            if(hmin > hcurrent){
                couche++;
                //MAX_STEPS += couche*2;
                hmin = hcurrent;
                count = 0;
            }else{
                count++;
                //System.out.println("count " + count);
            }
            time = System.currentTimeMillis() - timeStart;
        }
        if (current.satisfy(problem.getGoal())) {
            //System.out.println("hoooo" + current.satisfy(problem.getGoal()) + current.getAction());
            return this.extractPlan(current, problem);
        }


        // Finally, we return the search computed or null if no search was found
        return plan;
    }
        /**
     * Extracts a search from a specified node.
     *
     * @param node the node.
     * @param problem the problem.
     * @return the search extracted from the specified node.
     */
    private Node MonteCarloRandomWalk(final Node node, final ADLProblem problem) {
        final StateHeuristic heuristic = StateHeuristic.getInstance(this.getHeuristic(), problem);

        final double weight = 0.9;//this.getHeuristicWeight();
        double hmin =  Double.MAX_VALUE;
        Node smin = null;
        int NUM_WALK  = 2000;
        int LENGTH_WALK = 10;
        for(int i=0; i<NUM_WALK; i++){
            Node current = node;
            //Node current = new Node(node);
            //current.setParent(node.getParent());
            for(int j=0; j<LENGTH_WALK; j++){
                List<Action> A = new ArrayList<>();
                for (Action a : problem.getActions()) {
                    if(a.isApplicable(current)){
                        A.add(a);
                    }
                }
                if(A ==  null){
                    break;
                }
                Random random = new Random();
                int numAction = random.nextInt(A.size());
                Action a = A.get(numAction);

                final List<ConditionalEffect> effects = a.getConditionalEffects();
                Node next = new Node(current);
                for (ConditionalEffect ce : effects) {
                    if (current.satisfy(ce.getCondition())) {
                        next.apply(ce.getEffect());
                    }
                }
                final double g = current.getCost() + 1;//+1?
                for (int k = 0; k< problem.getActions().size();k++) {
                    if(problem.getActions().get(k).equals(a)){
                        next.setAction(k);
                    }
                }
                
                next.setCost(g);

                next.setParent(current);
                next.setHeuristic(heuristic.estimate(next, problem.getGoal()));
                //System.out.println("Action" + current.getAction() + "== "+ next.getParent().getAction());
                current = next;
            
                if(current.satisfy(problem.getGoal())){
                     return current;
                }

            }
            if( current.getHeuristic() < hmin){
                System.out.println("current.get "+ current.getHeuristic()+"  " +  hmin);
                smin = current;
                hmin = current.getHeuristic();
                //current.setHeuristic(hmin);
            }
        }
        if(smin == null){
            return node;
        }else{
            return smin;
        }
}

    private Plan extractPlan(final Node node, final ADLProblem problem) {
        Node n = node;

        final Plan plan = new SequentialPlan();
        while (n.getAction() != -1 ) {
            final Action a = problem.getActions().get(n.getAction());

            plan.add(0, a);
            n = n.getParent();
        }
        return plan;
    }

    /**
     * Search a solution plan to a specified domain and problem using A*.
     *
     * @param problem the problem to solve.
     * @return the plan found or null if no plan was found.
     */
    @Override
    public Plan solve(final ADLProblem problem) {
        // Creates the A* search strategy
        StateSpaceSearch search = StateSpaceSearch.getInstance(SearchStrategy.Name.ASTAR,
                this.getHeuristic(), this.getHeuristicWeight(), this.getTimeout());
        LOGGER.info("* Starting arvand search \n");
        // Search a solution
        Plan plan = this.arvand(problem);
        // If a plan is found update the statistics of the planner and log search information
        if (plan != null) {
            LOGGER.info("* arvand search succeeded\n");
            this.getStatistics().setTimeToSearch(search.getSearchingTime());
            this.getStatistics().setMemoryUsedToSearch(search.getMemoryUsed());
        } else {
            LOGGER.info("* arvand search failed\n");
        }
        // Return the plan found or null if the search fails.
        return plan;
    }
    /**
     * The main method of the <code>ASP</code> planner.
     *
     * @param args the arguments of the command line.
     */
    public static void main(String[] args) {
        try {
            final ASP planner = new ASP();
                    // Solve and print the result
        try {
            long startTime = System.currentTimeMillis();
            planner.setDomain(args[0]);
            // Sets the problem to solve
            planner.setProblem(args[1]);        
            // Selects the heuristic to use
            planner.setHeuristic(StateHeuristic.Name.MAX);
            // Sets the weight of the heuristic
            planner.setHeuristicWeight(1.2);
            planner.setTimeout(600);
            ADLProblem pb = planner.instantiate(planner.parse());
            FileWriter writer;
            FileWriter writerDomain;

            try{
                String[] temp;
                temp = args[1].split("\\.");
                String output = ".." + temp[temp.length-2] + ".val";
                temp = output.split("\\/");
                String outputTimer = "";
                for(int i =0;i<temp.length-1;i++){
                    outputTimer += temp[i] + "/";
                }
                outputTimer += "timer.txt";                
                System.out.println(outputTimer);

                
                writer = new FileWriter(output);
                writerDomain = new FileWriter(outputTimer, true);
                writer.write(pb.toString(planner.solve(pb)));
                writer.flush();
                writer.close();
                long endTime = System.currentTimeMillis();
                long time = endTime - startTime;

                writerDomain.write(Long.toString(time));
                writerDomain.write("\n");
                writerDomain.close();
            }catch (IOException e){
                e.printStackTrace();
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
            //CommandLine cmd = new CommandLine(planner);
            //cmd.execute(args);
        } catch (IllegalArgumentException e) {
            LOGGER.fatal(e.getMessage());
        }
    }
}