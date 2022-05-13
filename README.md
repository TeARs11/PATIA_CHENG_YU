# PATIA_CHENG_YU

Dans cette page on va essayer construire notre propre planificateur et qui est developpé par un groupe d'étudiants de l'UGA qui sont : <br />

### <i> Ran Cheng </i>
### <i> Ran YU </i>

# Partie 1 (sokoban):

 ## Abstract : 
Dans la première partie, Nous avons écrit un **domain.pddl** pour sokoban,nous avons d'abord écrit un script **LireTerain.py** pour convertir toutes les questions (cartes) en format .pddl. Nous avons ensuite utilisé le planificateur fourni par l'enseignant pour calculer les problèmes fournis **DirectPlannerConfigurationExemple.java** et pour convertir les problèmes en instructions à afficher sur localhost pour visualiser les résultats **Agent.java**.

 ## Etape :

 Etape 1 : Tranfert les terrain à problem.pddl avec LireTerrain.py

 Etape 2 : dans fichier pddl4j/src/main/java/fr/uga/pddl4j/examples/DirectPlannerConfigurationExemple.java : résoudre tous les problèmes.pddl, enregistre les résoultats dans ASP/benchmarks/config/problem(i).txt
 
 Etape 3 : dans Agent.java, transfert les résoultats dans problem.txt à des actions(UP = U, Right = R, Left = L, Down = D)
 
 Etape 4 : exécute SokobanMain.java pour afficher le résoultat dans la page localhost:8888
 
 ## Remarque : 
 Pour changer l'expose problem.txt sur le site, il faut modifier la ligne 49 dans Agent.java et la ligne 10 dans le fichier SokobanMain.java pour changer le numéro de problème.

 ## Compilation : 
 #### dans ASP/benchmarks/config : 
 		python3 LireTerrain.py
 
 #### dans ASP : 
 		javac -d classes -cp classes:libs/pddl4j-4.0.0.jar src/fr/uga/pddl4j/examples/*
 
 #### dans sokoban : 
 		mvn compile

 ## Execution :
 #### dans le répertoire ASP : 
 		java -cp classes:libs/pddl4j-4.0.0.jar fr.uga.pddl4j.examples.DirectPlannerConfigurationExample

 #### dans le répertoire Sokoban :
 
 Si vous voulez voir les résultats, il vous suffit d'exécuter ces deux lignes

 		java --add-opens java.base/java.lang=ALL-UNNAMED \
			-server -Xms2048m -Xmx2048m \
			-cp "$(mvn dependency:build-classpath -Dmdep.outputFile=/dev/stdout -q):target/test-classes/:target/classes" \
			sokoban.Agent

et

		 java --add-opens java.base/java.lang=ALL-UNNAMED \
			-server -Xms2048m -Xmx2048m \
			-cp "$(mvn dependency:build-classpath -Dmdep.outputFile=/dev/stdout -q):target/test-classes/:target/classes" \
			sokoban.SokobanMain

# Partie 2 (Arvand):

## Abstract : 

Dans la deuxième partie, après avoir complété l'algorithme arvand, nous avons écrit un script testPlan pour tester 4 benchmarks, un test-sok.sh pour tester toutes les questions sokoban, un script validate pour tester si toutes les questions générées sont correctes, et un drawTime.py script qui dessine des images du temps de test et l'enregistre dans le repertoire benchmark.

Pour certains des problèmes les plus difficiles, l'algorithme que nous avons mis en œuvre n'a pas trouvé de solution (du moins pas dans les 300 secondes). Par exemple, au cinquième problème de dépôt, nous étions déjà incapables de trouver une solution en 300s (Astar non plus), je n'ai donc pas continué les tests.

Cependant, dans certains cas, nous estimons qu'arvand est mieux que HSP.

Un autre problème est survenu avec sokoban, où nous avons constaté que notre algorithme ne pouvait pas trouver une solution à sokoban de toute façon, et que son heuristique restait bloquée à une certaine valeur et ne changeait jamais. Nous n'avons pas trouvé de solution en fin de compte. 

Quant à la dynamique, nous avons essayé de modifier dynamiquement NUM_WALK, LENGTH_WALK et MAX_STEPS, par exemple en augmentant LENGTH_WALK lorsque l'heuristique était bloquée, mais l'effet n'était pas évident, nous pensons donc que le problème est peut-être encore statique.

 
## Compilation :
 
#### dans ASP: 
		javac -d classes -cp classes:libs/pddl4j-4.0.0.jar src/fr/uga/pddl4j/examples/arvand/*

## Execution : 

		cd src

		./testPlan.sh

		./validatePlan.sh  (En linux, L'exécution dans d'autres environnements nécessite des modifications du script)

## Resultat : 
Nous avons essayé de résoudre 48 problèmes en utilisant arvand, dont 39 ont été résolus avec succès et les 9 restants n'ont pas été résolus en moins de 300s

48 Total val output plan(s) found.

39 validated plan(s).


Nous avons constaté que notre algorithme arvand ne fonctionnait pas très bien pour un problème particulier, peut-être s'agissait-il d'une impasse, ou peut-être y avait-il un problème avec l'algorithme heuristique.
 
 
