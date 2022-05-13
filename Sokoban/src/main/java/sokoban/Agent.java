package sokoban;

import java.util.Scanner;
import java.io.*;
import fr.uga.pddl4j.parser.ErrorManager;
import fr.uga.pddl4j.parser.Message;
import fr.uga.pddl4j.parser.PDDLParser;
import fr.uga.pddl4j.parser.ParsedProblem;
import fr.uga.pddl4j.problem.ADLProblem;
import fr.uga.pddl4j.problem.operator.Action;
import fr.uga.pddl4j.heuristics.state.StateHeuristic;
import fr.uga.pddl4j.planners.LogLevel;
import fr.uga.pddl4j.planners.statespace.HSP;
import java.io.FileNotFoundException;


public class Agent {
    public static String traiteLine(String str ){
        // le symbolr pour couper le string
        String coupeurAvantFonct = "[(]";
        String coupeurDansFonct = "_";
        String coupeResFonct = "";
        String coupeResAct = "";
        String coupeRes = "";
        String res = "";
        coupeResFonct = str.split(coupeurAvantFonct)[1];
        coupeResAct = coupeResFonct.split(coupeurDansFonct)[2];
        coupeRes = coupeResAct.split(" ")[0];
        switch(coupeRes){
            case "up" :
                res += "U";
                break;
            case "down" :
                res += "D";
                break;
            case "left" :
                res += "L";
                break;
            case "right" :
                res += "R";
                break;
            default :
                System.out.println("default =  " + coupeResAct);

        }
        return res;
    }
    public static void main(String[] args) throws IOException{
        String filename = "../ASP/benchmarks/config/problem10.txt";
        FileInputStream inputStream = new FileInputStream(filename);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));

        String str = "";
        String solution = "";
        boolean ok = false;
        boolean end = false;
        String start = "found plan as follows:";
        int i = 0;
        while((str = bufferedReader.readLine()) != null){
            solution +=traiteLine(str);
        }

        //close
        inputStream.close();
        bufferedReader.close();

       //System.out.println(solution);
        for (char c : solution.toCharArray())
            System.out.println(c);
    }
}
