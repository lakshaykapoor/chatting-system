<?php
//magic_quotes_gpc php.ini
require 'corelio.php';
require 'sqlconnectlio.php';
if(loggedin())
{
  header('Location: mainpagelio.php');
}
$wrongpass=0;
$notable=0;
$fields=0;
$script;
if(isset($_POST['username'])&&isset($_POST['password']))
{
  $username=mysql_real_escape_string($_POST['username']);
  $password=mysql_real_escape_string($_POST['password']);
  $password_hash=md5($password);
  if(!empty($username)&&!empty($password))
  {
    $query="SELECT `id` FROM `users` Where `username`='$username' && `password`='$password_hash'";
    if($query_run=mysql_query($query))
    {
      $query_row=mysql_num_rows($query_run);
      if($query_row==0)
      {
        /*echo 'Wrong Username or Password.';*/
        $wrongpass=1;
      }
      else if($query_row==1)
      {
        $user_id=mysql_result($query_run , 0 , 'id');
        $_SESSION['user_id']=$user_id;
        header('Location: mainpagelio.php');
      }
      else
      {
        $wrongpass=1;
      }
    }
    else {
      /*echo 'Not able to Log In now. Please try again later.';*/
      $notable=1;
    }
  }
  else {
    /*echo 'Please fill in all fields.';*/
    $fields=1;
  }
}
?>
<html>
<head>
  <link href="login1.css" type="text/css" rel="stylesheet">
</head>
<body>
<div class='from'>
 <form action='loginlio.php' method='POST'>
   <div class= 'blanktext'>Username:</div> <input type='text' name='username' placeholder="Username">
   <div class= 'blanktext'>Password:</div> <input type='password' name='password'placeholder="Password">
   <input type='submit' value='Log In' id ='button'><br>
   <div id='link'><a href="registerlio.php">Register</a><div>
</form>
     <?php
     if($fields==1)
     {
       echo "<div class='message' style='color:rgba(255,255,255,.8);'>Please fill in all fields.</div>";
     }
     else if($notable==1)
     {
       echo "<div class='message' style='color:rgba(255,255,255,.8);'>Not".$query."able to Log In now. Please try again later.</div>";
     }
     else if($wrongpass==1)
     {
       echo "<div class='message' style='color:rgba(255,255,255,.8);'>Wrong Username or Password.<div>";
     }
      ?>

</body>
</html>
