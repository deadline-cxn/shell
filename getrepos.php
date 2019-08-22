#!/bin/php
<?php
if(empty($argv[1]))
    $argv[1]="/home/sparson/shell/repos";
$repos=file_get_contents($argv[1]);
$repo_list=explode("\n",$repos);
foreach($repo_list as $repo) {
    if(!empty($repo)) {
        $cmd="git clone git@github.com:sethcoder/$repo.git";
        echo "$repo ($cmd) \n";
        exec($cmd);
    }
}
