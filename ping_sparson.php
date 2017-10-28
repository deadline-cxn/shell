<?php
$hostname=gethostname();
echo "TEST $hostname\n";
$url="http://sparson.com?a=p&hostname=$hostname";
$x=file_get_contents($url);