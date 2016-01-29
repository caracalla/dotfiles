PS1='[\u@TEST \w]\n \#\$ \n\
\[\
\e[1mBold Text\e[m\n\
\e[4mUnderline Text\e[m\n\
\e[5mBlink Text\e[m\n\
\e[7mInverse Text\e[m\]\n\
Should be normal text
Foreground colors:
\[\
\e[0;30m30: Black\n\
\e[0;31m31: Red\n\
\e[0;32m32: Green\n\
\e[0;33m33: Yellow\Orange\n\
\e[0;34m34: Blue\n\
\e[0;35m35: Magenta\n\
\e[0;36m36: Cyan\n\
\e[0;37m37: Light Gray\Black\n\
\e[0;39m39: Default\n\
Bright foreground colors:
\e[1;30m30: Dark Gray\n\
\e[1;31m31: Red\n\
\e[1;32m32: Green\n\
\e[1;33m33: Yellow\n\
\e[1;34m34: Blue\n\
\e[1;35m35: Magenta\n\
\e[1;36m36: Cyan\n\
\e[1;37m37: White\n\
\e[0;39m39: Default\n\
\e[m\]Background colors:
\[\e[1;37m\e[40m40: Black\e[0;49m\n\
\e[41m41: Red\e[0;49m\n\
\e[42m42: Green\e[0;49m\n\
\e[43m43: Yellow\Orange\e[0;49m\n\
\e[44m44: Blue\e[0;49m\n\
\e[45m45: Magenta\e[0;49m\n\
\e[46m46: Cyan\e[0;49m\n\
\e[47m47: Light Gray\Black\e[0;49m\n\
\e[49m49: Default\e[m\]\n'

PS1="$thedate $thetime 
\[
\e[31m
\]
$username

\[
\e[m
\]
@

\[
\e[36m
\]
$hostname: 

\[
\e[32m
\]
$directory

\[
\e[m
\]
 \$ "

export PS1="$thedate $thetime \[\e[31m\]$username\[\e[m\]@\[\e[36m\]$hostname: \[\e[32m\]$directory\[\e[m\] \$ "