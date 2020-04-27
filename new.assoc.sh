#!/bin/bash
echo "sparson ALL=(ALL) NOPASSWD: ALL"
cp /home/sparson/shell/.bashrc /home/sparson/.bashrc
sudo cp /home/sparson/shell/.bashrc /root/.bashrc
git config --global push.default matching
git config --global user.name "Seth Parson aka Deadline"
git config --global user.email "seth.parson.71@gmail.com"
