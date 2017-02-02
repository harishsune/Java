@echo off
if not exist target mkdir target
if not exist target\classes mkdir target\classes


echo compile classes
javac -nowarn -d target\classes -sourcepath jvm -cp "e:\jni4net-0.8.8.0-bin\lib\jni4net.j-0.8.8.0.jar"; "jvm\classlibrary1\Class1.java" 
IF %ERRORLEVEL% NEQ 0 goto end


echo ClassLibrary1.j4n.jar 
jar cvf ClassLibrary1.j4n.jar  -C target\classes "classlibrary1\Class1.class"  > nul 
IF %ERRORLEVEL% NEQ 0 goto end


echo ClassLibrary1.j4n.dll 
csc /nologo /warn:0 /t:library /out:ClassLibrary1.j4n.dll /recurse:clr\*.cs  /reference:"D:\Documents\visual studio 2015\Projects\ClassLibrary1\bin\Debug\ClassLibrary1.dll" /reference:"E:\jni4net-0.8.8.0-bin\lib\jni4net.n-0.8.8.0.dll"
IF %ERRORLEVEL% NEQ 0 goto end


:end
