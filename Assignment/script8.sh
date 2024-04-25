#!/bin/bash

# Git offers a feature called cherry pick which is used to pick a commit from different branch and apply into your branch.
# Your tasks are
# - Clone the git repository from `/opt/repository/fibonacci` to `~/se2001/assignment_8/fibonacci` using `git clone`
# - Create a branch `<your_roll_number>` from `master`
# - Replace the example fibonacci input by your roll number (final three digits without preceded zeroes) in the file README.md and doa commit with message `update example`
# - Cherry pick the commit `693dca7f5dae2b72a960018ba3df5b8819963b37` from the branch `remove-todo` and apply it your branch
# - Merge the branch `<your_roll_number>` to `master` locally.

git clone /opt/repository/fibonacci ~/se2001/assignment_8/fibonacci
cd ~/se2001/assignment_8/fibonacci
git checkout master
git checkout -b 23f1002147

vi README.md # Replace example with 147 in README.md present inside repository
git add README.md
git commit -m "update example"
git cherry-pick 693dca7f5dae2b72a960018ba3df5b8819963b37
git checkout master
git merge 23f1002147

# git branch -a          # Check all branches exist locally or remote
