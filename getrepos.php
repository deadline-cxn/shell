#!/bin/php
<?php
//mkdir("/home/sparson/develop");
//mkdir("/home/sparson/develop/projects");
// chdir("/home/sparson/develop/projects");
//echo $argv[1];
$repos=file_get_contents($argv[1]);
$repo_list=explode("\n",$repos);
foreach($repo_list as $repo) {
	if(!empty($repo)) {
		$cmd="git clone git@github.com:sethcoder/$repo";
		echo "$repo ($cmd) \n";
		//exec($cmd);
	}
}
