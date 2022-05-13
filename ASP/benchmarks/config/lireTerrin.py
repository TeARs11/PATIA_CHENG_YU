import json
import numpy as np 
import re


def writeFile(i, terrin) :
    print('terrin = \n', terrin)
    lines = re.split('[|\n]', terrin)
    print(lines)
    h = len(lines)
    print('lines = ',lines)
    print(type(lines))
    
    filename = 'sokoban_problem'+str(i)+'.pddl'
    with open(filename, 'w') as f :
        #define
        sDefine = '(define (problem sokoban_problem' + str(i)+') \n    (:domain sokoban)'
        f.write(sDefine )
        
        # object
        sObjects = '\n    (:objects \n        '
        maxLine = 0
        for i in range(0 , len(lines)) : 
            sObjects= sObjects + 'h'+str(i) + ' '
            if(len(lines[i])>maxLine):
                maxLine = len(lines[i])
        sObjects= sObjects + ' '
        for i in range(0 , maxLine) : 
            sObjects= sObjects + 'v'+str(i) + ' '
        sObjects= sObjects + '- loc \n    )'
        f.write(sObjects )

        #init horizontal
        sInit = '\n    (:init \n       '
        for i in range(0 , len(lines)-1) : 
            j = i+1
            sInit = sInit + '(adjsn h'+str(i)+' h'+str(j)+') '
        sInit = sInit+'\n        '

        #init vertical
        for i in range(0 , maxLine-1) : 
            j = i+1
            sInit = sInit + '(adjwe v'+str(i)+' v'+str(j)+') '
        sInit = sInit+'\n        '
        sGoal = '\n    (:goal  \n         (and'  
        # init wall
        # var tiles={0:'EMPTY',1:'WALL',2:'FLOOR',3:'TARGET',4:'CARGO',5:'CARGO_ON_TARGET',6:'KEEPER',7:'KEEPER_ON_TARGET'};

        for i in range(0 , len(lines)) : 
            for j in range(0 , maxLine) :
                if (len(lines[i])-1 < j):
                    sInit = sInit + ' (empty v'+str(j)+' h'+str(i)+') '
                elif lines[i][j] == '1' or lines[i][j] == '#':
                     sInit = sInit + '(wall_at v'+str(j)+' h'+str(i)+') '
                elif lines[i][j] == '2' or lines[i][j] == ' ':
                    sInit = sInit + ' (empty v'+str(j)+' h'+str(i)+') '
                elif lines[i][j] == '3' or lines[i][j] == '.':
                    sInit = sInit + ' (empty v'+str(j)+' h'+str(i)+') '
                    sGoal = sGoal + ' (box_at v'+str(j)+' h'+str(i)+') '
                elif lines[i][j] == '4' or lines[i][j] == '$':
                    sInit = sInit + '(box_at v'+str(j)+' h'+str(i)+') '
                elif lines[i][j] == '5' or lines[i][j] == '*':
                    sInit = sInit + '(box_at v'+str(j)+' h'+str(i)+') '
                    sGoal = sGoal + ' (box_at v'+str(j)+' h'+str(i)+') '
                elif lines[i][j] == '6' or lines[i][j] == '@':
                    sInit = sInit + '(person_at v'+str(j)+' h'+str(i)+') '
                elif lines[i][j] == '7' or lines[i][j] == '+':
                    sInit = sInit + '(person_at v'+str(j)+' h'+str(i)+') '
                    sGoal = sGoal + ' (box_at v'+str(j)+' h'+str(i)+') '
        sInit = sInit+'\n        '
        sInit = sInit+'\n    )' 
        f.write(sInit)
        sGoal = sGoal+')\n    )\n)' 
        f.write(sGoal)


if __name__ == "__main__":
    for i in range(1,30) :
        name = 'test'+str(i) + '.json'
        #print(name)
        f = open(name,'r')
        data = json.load(f)
        terrin = data['testIn']
        writeFile(i, terrin)

        #print(type(terrin))

        #print(data['testIn'])
        f.close()

