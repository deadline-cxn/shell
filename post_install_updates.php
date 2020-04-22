<?php
$hostfile_l="/etc/hosts";
$hostfile=file_get_contents("/home/sparson/shell/data/hosts");
$hosts=explode("\n",$hostfile);
foreach($hosts as $h) {
  $h=str_replace("  "," ",$h);
  $h=str_replace("   "," ",$h);
  if(!empty($h)) {
    if(stristr($h,"192")) {
         list($t,$h)=explode(" ",$h);
         $t.=" $h\n";
    }
    else {
        $t="192.168.1.4 $h\n";
    }
    echo "$t";
    if(fif($h,$hostfile_l)) {
      echo "$h FOUND! (skipping)\n";
    }
    else {
      $f=fopen($hostfile_l,"a");
      if($f) {
        fwrite($f,$t);
        fclose($f);
      } 
    }
  }
}

function fif($t,$f) {
    $d=file_get_contents($f);
    if(stristr($d,$t)) {
        echo "****** hosts entry:$t\n";
        return true;
    }
    return false;
}
