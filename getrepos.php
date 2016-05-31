<?php
mkdir("/home/sparson/develop");
mkdir("/home/sparson/develop/projects");
chdir("/home/sparson/develop/projects");
$repos=file_get_contents("/home/sparson/shell/repos");
$repo_list=explode("\n",$repos);
foreach($repo_list as $repo) {
	if(!empty($repo)) {
		$cmd="git clone https://github.com/sethcoder/$repo";
		echo "$repo ($cmd) \n";
		exec($cmd);
	}
}
