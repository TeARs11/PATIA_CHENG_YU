VERSION=4.0.0
PROBLEM=""

echo "### Execute 4 HSP planifications on Sokoban problems"
TYPE=sokoban
for ((i=1 ; i<3 ; i++))
    do
     if [ ${i} -lt 10 ]
        then PROBLEM=sokoban_problem${i}.pddl
    else
        PROBLEM=sokoban_problem${i}.pddl
    fi
    java -cp ../classes:../libs/pddl4j-${VERSION}.jar fr.uga.pddl4j.examples.arvand.Arvand ../benchmarks/${TYPE}/sokoban_domain.pddl ../benchmarks/${TYPE}/${PROBLEM} -t 300
done
