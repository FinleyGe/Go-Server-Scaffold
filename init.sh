#!/usr/bin/env bash
echo "Initializing new project..."
echo "Enter project name:"
read project_name
echo "is $project_name correct? (y/n)"
read project_name_correct
if [ $project_name_correct = "n" ]; then
    echo "Enter project name:"
    read project_name
fi
echo "If you want to connect to a remote repository? (y/n)"
read remote_repo
if [ $remote_repo = "y" ]; then
    echo "Enter remote repository url:"
    read remote_repo_url
    echo "Enter remote repository branch:"
    read remote_repo_branch
fi
rm ./README.md
rm ./init.sh

echo "# $project_name" >> README.md
rm -r ./.git

git init
git remote add origin $remote_repo_url
git pull origin $remote_repo_branch
git add .
git commit -m "Initial commit"
if [ $remote_repo = "y" ]; then
    git push -u origin $remote_repo_branch
fi

echo "Project initialized!"
echo "Your project name is $project_name"
echo "Your remote repository is $remote_repo_url"
echo "Your remote repository branch is $remote_repo_branch"
echo "Thank you for using this scaffold!"
