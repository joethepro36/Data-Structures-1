@ECHO OFF 
SET _BASEDIR=F:\Desktop\renew2.5
IF NOT DEFINED CLASSPATH GOTO NOCP
SET _OLDPATH=%CLASSPATH%
GOTO SETCP
:NOCP
SET _OLDPATH=
SET CLASSPATH=.
:SETCP

IF NOT DEFINED NETPATH GOTO NONP
SET _NP=%NETPATH%
GOTO SETNP
:NONP
SET _NP=.
:SETNP

:JHOME
SET _JAVA_BIN=
IF NOT DEFINED JAVA_HOME GOTO START
SET _JAVA_BIN=%JAVA_HOME%\bin\

:START
"%_JAVA_BIN%java" -Xmx200M -Dde.renew.netPath=%_NP% -Dde.renew.classPath="%CLASSPATH:"=%" -jar "%_BASEDIR%\loader.jar" gui %1 %2 %3 %4 %5 %6 %7 %8 %9
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

