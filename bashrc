# bashrc: myconfig/bashrc main file
# 
# Source this file from ~/.bashrc using e.g.:
#   . $HOME/.myconfig/bashrc
# 
# MvdS, 2021-11-23


# Source other bashrc files (~/.myconfig/bashrc_*) in alphabetical order:
for FILE in `ls $HOME/.myconfig/bashrc_*`
do
    . $FILE
done



