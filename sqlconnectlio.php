<?php
$host='localhost';
$username1='root';
$pass='';
$database='practicedatabase';
if(!mysql_connect($host,$username1,$pass)||!mysql_select_db($database))
{
  die(mysql_error());
}
 ?>
