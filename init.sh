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
rm ./README.md
rm ./init.sh
rm -r ./.git
find . -type f -exec sed -i 's/Go-Server-Scaffold/test/g' {} +
echo "# $project_name" >> README.md
rm ./go.mod
rm ./go.sum
go mod init $project_name
git init
