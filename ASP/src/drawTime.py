import numpy as np
import matplotlib.pyplot as plt 

#-----------time 01
list = []
path1 = '../benchmarks/blocksworld/'
path2 = '../benchmarks/depots/'
path3 = '../benchmarks/logistics/'
path4 = '../benchmarks/gripper/'
timeNom = 'timer.txt'
timeHSP = 'timerHSP.txt'
list.append(path1)
list.append(path2)
list.append(path3)
list.append(path4)

for j in range(0,4):
    filename1 = list[j] + timeNom
    file = open(filename1)  
    data1 = file.readlines() 

    filename2 = list[j] + timeHSP
    file02 = open(filename2)  
    data2 = file02.readlines() 

    x1 = [] 
    y1 = []
    for i in range(min(len(data1), len(data2))):
        x1.append(i)
        y1.append(int(data1[i])/1000)




    #-----------time 02

    x2 = x1 
    y2 = []
    #print('data = ', data)
    for i in range(min(len(data1), len(data2))):
        y2.append(int(data2[i]))
        
        
    l1=plt.plot(x1,y1,'r--',label='Random')
    l2=plt.plot(x2,y2,'g--',label='HSP')

    #l3=plt.plot(x3,y3,'b--',label='type3')

    #plt.plot(x1,y1,'ro-',x2,y2,'g+-',x3,y3,'b^-')


    plt.plot(x1,y1,'ro-', x2,y2,'g+-')
    plt.title('Runtime in Tankage')
    plt.xlabel('Problems')
    plt.ylabel('RunTime(s)')
    plt.legend()
    nameFig = list[j]+'fig.png'
    plt.savefig(nameFig)
    plt.close()
    #plt.show()
