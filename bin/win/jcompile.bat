@ECHO OFF 
SET _BASEDIR=F:\Desktop\renew2.5
IF NOT DEFINED CLASSPATH GOTO NOCP
SET _OLDPATH=%CLASSPATH%
GOTO SETCP
:NOCP
SET _OLDPATH=
SET CLASSPATH=.
:SETCP
REM The list of jar files below has been generated by installrenew.bat. 
REM If it becomes out-of-date, please re-run the install script. 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\loader.jar" 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\plugins\ch-2.5_1.6.jar" 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\plugins\console-2.5_1.0.jar" 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\plugins\export-2.5_0.3.1.jar" 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\plugins\formalism-2.5_1.5.jar" 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\plugins\formalismgui-2.5_1.1.0.jar" 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\plugins\gui-2.5_1.3.jar" 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\plugins\logging-2.5_1.2.jar" 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\plugins\misc-2.5_1.3.jar" 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\plugins\navigator-2.5_1.0.jar" 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\plugins\nc-2.5_0.7.1.jar" 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\plugins\remote-2.5_1.0.jar" 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\plugins\simulator-2.5_1.6.jar" 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\plugins\splashscreen-2.5_0.3.jar" 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\plugins\util-2.5_1.4.jar" 
CALL "%_BASEDIR%\bin\win\setupfiles\_rcphelp.bat" "%_BASEDIR%\libs\log4j\log4j-1.2.12.jar" 
:JHOME
SET _JAVA_BIN=
IF NOT DEFINED JAVA_HOME GOTO START
SET _JAVA_BIN=%JAVA_HOME%\bin\
:START
ECHO using CLASSPATH: %CLASSPATH%
"%_JAVA_BIN%javac" -classpath "%CLASSPATH:"=%" %1 %2 %3 %4 %5 %6 %7 %8 %9
IF NOT DEFINED _OLDPATH GOTO CLEARCP
SET CLASSPATH=%_OLDPATH%
SET _OLDPATH=
GOTO CLEAR
:CLEARCP
SET CLASSPATH=
:CLEAR
SET _JAVA_BIN=
SET _BASEDIR=
SET _NP=
