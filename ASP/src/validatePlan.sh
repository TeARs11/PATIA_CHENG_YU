#!/bin/bash
VERSION=4.0.0
FILES=""
TOTAL_FILES=0
TOTAL_VALIDATED_PLANS=0
VALIDATE_BIN=validate-osx

#Tests path definitions for IPC1
TEST[0]="../benchmarks/blocksworld"
TEST[1]="../benchmarks/logistics"
TEST[3]="..//benchmarks/depots"
TEST[4]="../benchmarks/gripper"


#Loop over all test paths
for test in ${TEST[@]} ;do
    echo "################################################################"
    echo "${test}"
    echo "################################################################"
    echo ""
    FILES=$(find ${test} -name "*.val" -type f)
    NB_FILES=0
    NB_VALIDATED_FILE=0
    ONE_DOMAIN_FILE=0
    if [ -f "${test}/domain.pddl" ] ;then
        ONE_DOMAIN_FILE=1
    fi
    #Loop over all VAL files in path
    for f in $(echo ${FILES} | tr " " "\n"); do
        
        name=$(echo ${f} | cut -d \/ -f 4)
        echo "${name}"
        name=$(echo ${name} | cut -d . -f 1)
        if [ ${ONE_DOMAIN_FILE} -eq 1 ] ;then
            ./${VALIDATE_BIN} -s ${test}/domain.pddl ${test}/${name}.pddl ${f}
        else
            ./${VALIDATE_BIN} -s ${test}/${name}-domain.pddl ${test}/${name}.pddl ${f}
        fi
        if [ $? -eq 0 ] ;then
            ((NB_VALIDATED_FILE+=1))
        fi
        ((NB_FILES+=1))
    done
    ((TOTAL_FILES+=NB_FILES))
    ((TOTAL_VALIDATED_PLANS+=NB_VALIDATED_FILE))
    echo ${NB_FILES} "val output plan(s) found."
    echo ${NB_VALIDATED_FILE} "plan(s) validated."
    echo ""
done

echo ${TOTAL_FILES} "Total val output plan(s) found."
echo ${TOTAL_VALIDATED_PLANS} "validated plan(s)."

NB_ERROR=$((TOTAL_FILES - TOTAL_VALIDATED_PLANS))

if [ ${NB_ERROR} -gt 0 ] ;then
    echo ${NB_ERROR} "plan errors found"
else
    echo "Congratulation! All your plan are valid."
fi

exit ${NB_ERROR}
