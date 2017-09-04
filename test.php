<?php
include 'Snoopy.class.php';
$snoopy = new Snoopy;
    
// $snoopy->fetchtext("http://www.php.net/");
// print $snoopy->results;

    $snoopy->fetchlinks("http://www.ci123.com/");
    var_dump($snoopy->results);