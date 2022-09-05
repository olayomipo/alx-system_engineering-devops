



Auto push on run

#!/usr/bin/env bash



echo "Auto push"



git pull

echo "pulling ..."



echo 'Enter the file(s) you wish to commit -(Press Enter without input to add all untracked files):'

read files #type files



if [ "$files" = '' ]; then
    
    git add .
    
    echo "Added all untracked files"
    
else
    
    git add "$files"
    
    echo "Added file(s): $files "
    
fi





echo "Enter a commit message: "

read msg  #type commit message



#commits changes using the commit message gotten as input

if [ "$msg" = '' ]; then
    
    git commit -m "Latest update"
    
else
    
    git commit -m "$msg"
    
fi



echo "Commit made with with message $msg"

git push



clear >$(tty)
