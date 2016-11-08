<?php
$dragon_hp=1000;
$your_hp=100;
echo "You are fighting a dragon.\n";
$moves=0;
while($dragon_hp>0) {
    $damage=rand(50,150);
    $critical_strike=false;
    $crit_check=rand(1,100);
    if($crit_check>80) $critical_strike=true;
    if($critical_strike) $damage=$damage*2;
    echo "You hit the dragon for $damage damage.";
    if($critical_strike==true) echo " (CRITICAL STRIKE) ";
    echo "\n";
    $dragon_hp-=$damage;
    $moves++;
}
echo "The dragon has died in $moves moves. Congratulations\n";

