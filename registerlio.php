<?php
require 'sqlconnectlio.php';
$max_length = 0;
$notpass = 0;
$fillall = 0;
if(isset($_POST['username'])&&isset($_POST['password'])&&isset($_POST['confirm_password'])&&isset($_POST['firstname'])&&isset($_POST['lastname']))
{
  $username=mysql_real_escape_string($_POST['username']);
  $password=mysql_real_escape_string($_POST['password']);
  $confirmpassword=mysql_real_escape_string($_POST['confirm_password']);
  $firstname=mysql_real_escape_string($_POST['firstname']);
  $lastname=mysql_real_escape_string($_POST['lastname']);
  $password_hash=md5($password);
  if(strlen($username)>30||strlen($firstname)>30||strlen($lastname)>30)
  {
    echo 'Maximum length for username or firstname or lastname exceeded.';
  }
  else {
  if(!empty($username)&&!empty($password)&&!empty($confirmpassword)&&!empty($firstname)&&!empty($lastname))
  {
    if($password!=$confirmpassword)
    {
      echo 'Password does not match.';
      $notpass = 1;
    }
    else {
      $query="SELECT `username` FROM `users` WHERE `username`= '$username'";
      if($query_run=mysql_query($query))
      {
        $query_row=mysql_num_rows($query_run);
        if($query_row==0)
        {
          $query1="INSERT INTO `users` VALUES('','$username','$password_hash','$firstname','$lastname',0)";
          if($query1_run=mysql_query($query1))
          {
            echo 'Registered Successfully';
          }
          else {
            echo 'Could not register at this moment. Try again later.';
          }
        }
        else if($query_row==1){
          echo 'Username already exists.';
        }
      }
    }
  }
  else {
    echo 'Please fill in all fields.';
    $fillall=1;
  }
}
}
 ?>
 <html>
 <head>
   <link href="register.css" type="text/css" rel="stylesheet">
 </head>
 <body>
 <div class='from'>
<form action="registerlio.php" method="POST">
  <div class="blanktext">Firstname:</div><input type="text" name="firstname" value="<?php if(isset($firstname)){echo $firstname;} ?>" maxlength="30"><br>
  <div class="blanktext">Lastname:</div><input type="text" name="lastname" value="<?php if(isset($lastname)){echo $lastname;} ?>" maxlength="30"><br>
  <div class="blanktext">Username:</div><input type="text" name="username" value="<?php if(isset($username)){echo $username;} ?>" maxlength="30"><br>
  <div class="blanktext">Password:</div><input type="password" name="password"><br>
  <div class="blanktext">Confirm Password:</div><input type="password" name="confirm_password"><br>
  <input type="submit" value="Submit" id='button'>
  <br>
  <a href="loginlio.php">Already registered.Login!</a>
    <?php
    if($max_length==1)
    {
      echo 'fsdfg';
    }
    elseif ($notpass==1) {
      echo "<div style='color:rgba(255,0,0,.8);'>Password does not match!</div>";
    }
    elseif ($fillall==1) {
    echo "<p style='color:rgba(255,0,0,.8);'>Please fill in all fields!</p>";
    }
     ?>
</form>
</div>
</body>
</html>
