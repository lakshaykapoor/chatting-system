<?php
require 'corelio.php';
require 'sqlconnectlio.php';
if(isset($_POST['message'])&&isset($_POST['message'])&&!empty($_POST['message'])&&!empty($_POST['to']))
{
 $message = trim($_POST['message']);
 $to = trim($_POST['to']);
 $from = getuserfield('username');
 $query = "INSERT INTO `sent_message` (`text`) values('$message')";
 $query_run=mysqli_query($mysqli,$query);
 $query = "INSERT INTO `receive_message` (`text`) values('$message')";
 $query_run=mysqli_query($mysqli,$query);
 $query_to = "Select * from users where `username` = '$to'";
 $query_run = mysqli_query($mysqli,$query_to);
 if(mysqli_num_rows($query_run)==1)
 {
   echo "1";
   $query = "Insert into `messages` (`text`,`from`,`to`) values('$message','$from','$to')";
   $query_run = mysqli_query($mysqli,$query);
   header('Location: mainpagelio.php');
 }
 else {
   echo "0";
   header('Location: mainpagelio.php');
 }
}
else {
  echo 1;
}
?>
