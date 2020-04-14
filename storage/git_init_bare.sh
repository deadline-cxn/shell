#!/bin/bash
repo_folder="/gitrepos";
sudo -u git  bash -c "mkdir $repo_folder/$1.git;cd $repo_folder/$1.git; git init --bare";





