# bash_profile: myconfig/bash_profile main file
# 
# Source this file from ~/.bash_profile using e.g.:
#   . $HOME/.myconfig/bash_profile
# 
# MvdS, 2021-11-23


# Add path to my executables:
PATH="$PATH:$HOME/.myconfig/bin"
export PATH


# Source other bash_profile files (~/.myconfig/bash_profile_*):
for FILE in `ls $HOME/.myconfig/bash_profile_*`
do
    . $FILE
done


