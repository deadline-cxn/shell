<?php
$hostfile_l="/etc/hosts";
$hostfile=file_get_contents("./hosts");
$hosts=explode("\n",$hostfile);
foreach($hosts as $h) {
  if(!empty($h)) {
    $t="192.168.1.4 $h\n";
    if(fif($t,$hostfile_l)) {
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
  if(stristr($d,$t)) return true;
  return false;
}
