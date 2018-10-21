#!/bin/bash
repo_folder="/gitrepos";
su git
mkdir "$repo_folder/$1.git"
cd "$repo_folder/$1.git"
git init --bare
