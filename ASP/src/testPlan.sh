#!/bin/bash

VERSION=4.0.0
PROBLEM=""
TYPE=""

echo "### Execute 20 HSP planifications on blocks world problems"
TYPE=blocksworld
rm -r ../benchmarks/*/*.val
rm -r ../benchmarks/*/*.txt

for ((i=1 ; i<20 ; i++))
    do
    if [ ${i} -lt 10 ]
        then PROBLEM=p0${i}.pddl
    else
        PROBLEM=p${i}.pddl
    fi    
    java -cp ../classes:../libs/pddl4j-${VERSION}.jar fr.uga.pddl4j.examples.arvand.Arvand ../benchmarks/${TYPE}/domain.pddl ../benchmarks/${TYPE}/${PROBLEM} -t 300

    START_TIME=`date +%s`
    java -cp ../classes:../libs/pddl4j-${VERSION}.jar fr.uga.pddl4j.planners.statespace.HSP ../benchmarks/${TYPE}/domain.pddl ../benchmarks/${TYPE}/${PROBLEM} -t 300
    END_TIME=`date +%s`
    EXECUTING_TIME=`expr $END_TIME - $START_TIME`
    echo $EXECUTING_TIME
    #TIME=`expr $EXECUTING_TIME / 1000000`
    echo $EXECUTING_TIME>> ../benchmarks/${TYPE}/timerHSP.txt
done

echo "### Execute 11 HSP planifications on logistics problems"
TYPE=logistics
for ((i=1 ; i<20 ; i++))
    do
     if [ ${i} -lt 10 ]
        then PROBLEM=p0${i}.pddl
    else
        PROBLEM=p${i}.pddl
    fi
    java -cp ../classes:../libs/pddl4j-${VERSION}.jar fr.uga.pddl4j.examples.arvand.Arvand ../benchmarks/${TYPE}/domain.pddl ../benchmarks/${TYPE}/${PROBLEM} -t 300

    START_TIME=`date +%s`
    java -cp ../classes:../libs/pddl4j-${VERSION}.jar fr.uga.pddl4j.planners.statespace.HSP ../benchmarks/${TYPE}/domain.pddl ../benchmarks/${TYPE}/${PROBLEM} -t 300
    END_TIME=`date +%s`
    EXECUTING_TIME=`expr $END_TIME - $START_TIME`
    echo $EXECUTING_TIME
    #TIME=`expr $EXECUTING_TIME / 1000000`
    echo $EXECUTING_TIME>> ../benchmarks/${TYPE}/timerHSP.txt
done

echo "### Execute 20 HSP planifications on depots problems"
TYPE=depots
for ((i=1 ; i<4 ; i++))
    do
    if [ ${i} -lt 10 ]
        then PROBLEM=p0${i}.pddl
    else
        PROBLEM=p${i}.pddl
    fi
    java -cp ../classes:../libs/pddl4j-${VERSION}.jar fr.uga.pddl4j.examples.arvand.Arvand ../benchmarks/${TYPE}/domain.pddl ../benchmarks/${TYPE}/${PROBLEM} -t 300

    START_TIME=`date +%s`
    java -cp ../classes:../libs/pddl4j-${VERSION}.jar fr.uga.pddl4j.planners.statespace.HSP ../benchmarks/${TYPE}/domain.pddl ../benchmarks/${TYPE}/${PROBLEM} -t 300
    END_TIME=`date +%s`
    EXECUTING_TIME=`expr $END_TIME - $START_TIME`
    echo $EXECUTING_TIME
    #TIME=`expr $EXECUTING_TIME / 1000000`
    echo $EXECUTING_TIME>> ../benchmarks/${TYPE}/timerHSP.txt
done

echo "### Execute 4 HSP planifications on gripper problems"
TYPE=gripper
for ((i=1 ; i<8 ; i++))
    do
     if [ ${i} -lt 10 ]
        then PROBLEM=p0${i}.pddl
    else
        PROBLEM=p${i}.pddl
    fi
    java -cp ../classes:../libs/pddl4j-${VERSION}.jar fr.uga.pddl4j.examples.arvand.Arvand ../benchmarks/${TYPE}/domain.pddl ../benchmarks/${TYPE}/${PROBLEM} -t 300

    START_TIME=`date +%s`
    java -cp ../classes:../libs/pddl4j-${VERSION}.jar fr.uga.pddl4j.planners.statespace.HSP ../benchmarks/${TYPE}/domain.pddl ../benchmarks/${TYPE}/${PROBLEM} -t 300
    END_TIME=`date +%s`
    EXECUTING_TIME=`expr $END_TIME - $START_TIME`
    echo $EXECUTING_TIME
    #TIME=`expr $EXECUTING_TIME / 1000000`
    echo $EXECUTING_TIME>> ../benchmarks/${TYPE}/timerHSP.txt
done

python3 drawTime.py

exit 0
