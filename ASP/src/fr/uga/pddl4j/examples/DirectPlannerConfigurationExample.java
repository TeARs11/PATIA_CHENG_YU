package fr.uga.pddl4j.examples;
import fr.uga.pddl4j.heuristics.state.StateHeuristic;
import fr.uga.pddl4j.plan.Plan;
import fr.uga.pddl4j.planners.LogLevel;
import fr.uga.pddl4j.planners.statespace.HSP;
import fr.uga.pddl4j.problem.ADLProblem;

import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;


public class DirectPlannerConfigurationExample {

    /**
     * The main method of the class.
     *
     * @param args the command line arguments. No argument is used.
     */
    public static void main(String[] args) {

        // The path to the benchmarks directory
        // Sets the domain of the problem to solve

        for (int i = 1; i<=25; i++){

            // Creates the planner
            HSP planner = new HSP();

            planner.setDomain("benchmarks/config/sokoban_domain.pddl");

            // Sets the problem to solve
            planner.setProblem("benchmarks/config/sokoban_problem" + i + ".pddl");
            // Sets the timeout of the search in seconds
            planner.setTimeout(300);
            // Sets log level
            planner.setLogLevel(LogLevel.INFO);
            // Selects the heuristic to use
            planner.setHeuristic(StateHeuristic.Name.MAX);
            // Sets the weight of the heuristic
            planner.setHeuristicWeight(1.2);

            // Solve and print the result
            try {
                ADLProblem pb = planner.instantiate(planner.parse());
                FileWriter writer;
                try{
                    writer = new FileWriter("benchmarks/config/problem" + i + ".txt");
                    long startTime = System.currentTimeMillis();
                    Plan p = planner.solve();
                    long endTime = System.currentTimeMillis();
                    long time = endTime - startTime;
                    if(p!=null){
                        writer.write(pb.toString(p));
                        writer.flush();
                        writer.close();
                    }
                    FileWriter writerDomain= new FileWriter("benchmarks/config/timer.txt", true);

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
        }
    }

}
