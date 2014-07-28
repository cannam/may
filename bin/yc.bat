@echo off

set maypath=%~dp0..
set jarpath=%maypath%\ext\jar
set nativepath=%maypath%\ext\native\win64
set yetipath=%maypath%\..\yeti

java -classpath "%maypath%\may.jar;%yetipath%\yeti.jar;%jarpath%\jline-2.11-SNAPSHOT.jar;%jarpath%\jvamp.jar;%jarpath%\yertle.jar;%jarpath%\jtransforms-2.4.jar;%jarpath%\jzy3d-swt-0.9.1.jar;%jarpath%\jzy3d-api-0.9.1.jar;%jarpath%\jogl-all.jar;%jarpath%\gluegen.jar;%jarpath%\opencsv-2.1.jar;%jarpath%\org.convexhull.jar" -Djava.library.path=%nativepath% yeti.lang.compiler.yeti "%~1"

