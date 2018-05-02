<?php
require_once('corelio.php');
require_once('sqlconnectlio.php');
if(isset($_POST['messagefromto'])&&!empty($_POST['messagefromto']))
{
  $fromm = $_POST['messagefromto'];
}
else {
  $fromm='';
}
$username = getuserfield('username');
$query_rows = "Select * from `users` where `username`='$username'";
$query_rows_run = mysqli_query($mysqli,$query_rows);
$query_rows_run_count = mysqli_result($query_rows_run,0,'count');
$query = "Select * from `messages` where `to` = '$username' and `from` Like '%$fromm%' or `from` = '$username' and `to` Like '%$fromm%'";
$query_run=mysqli_query($mysqli,$query);
$row_count = mysqli_num_rows($query_run);
//$array =mysql_fetch_row($query_run);
//echo json_encode($array);
if($query_rows_run_count<$row_count)
{
  echo '1';
  $query_rows_run_count=$row_count;
  $query_rows = "Update `users` set `count`='$row_count' where `username`='$username'";
  $query_rows_run = mysqli_query($mysqli,$query_rows);
}
else {
  echo '0';
}
 ?>
