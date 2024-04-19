#!/bin/bash

# Clone the repository that is created in previous question and keep it in ~/se2001/assignment_5/se2001-<roll_number>/
# Create a file named `script5.sh` that exports two shell variables
# - `GITHUB_USERNAME` that holds the GitHub username Ex: "bscse2001"
# - `GITHUB_REPOSITORY` that holds the GitHub repository name Ex: "se2001-21f1000000"
# **Sample file structure**
# ~/se2001/assignment_5/
# └── se2001-21f1000000
# └── README.md

export GITHUB_USERNAME="suvrat344"
export GITHUB_REPOSITORY="se2001-23f1002147"

git clone "https://github.com/$GITHUB_USERNAME/$GITHUB_REPOSITORY" dir
