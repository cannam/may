@echo off
set MAY_INIT_MODULES=may.vector;may.matrix;may.complex;may.plot;may.vamp
java -classpath "may.jar;ext\jar\ayr.jar;..\yeti\yeti.jar;ext\jar\jline-2.11-SNAPSHOT.jar;ext\jar\jvamp.jar;ext\jar\yertle.jar;ext\jar\jtransforms-2.4.jar;ext\jar\jzy3d-swt-0.9.1.jar;ext\jar\jzy3d-api-0.9.1.jar;ext\jar\jogl-all.jar;ext\jar\gluegen.jar;ext\jar\opencsv-2.1.jar;ext\jar\org.convexhull.jar" -Djava.library.path=ext\native\win64 com.particularprograms.ayr -init "%MAY_INIT_MODULES%"
