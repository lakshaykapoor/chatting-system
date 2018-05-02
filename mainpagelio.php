<!--#ffdab9-->
<?php
require 'corelio.php';
require 'sqlconnectlio.php';
require 'pass.php';
require 'getmessage.php';
if(loggedin())
{
}
else {
  header('Location: loginlio.php');
}
 ?>
 <html>
 <head>
   <link href="mainpagelio.css" type="text/css" rel="stylesheet">
   <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
   <script type="text/javascript" src="jsmainlio1.js"></script>
 </head>
 <body>
   <div class="statusbar">
     <div style=" margin-top:13px; margin-left:10px; color:rgba(255,255,255,1); float: left;">Welcome <?php echo getuserfield('username');?>.</div>
     <div style=" margin-top:13px; margin-left:10px; color:rgba(255,0,0,1); float: left;"><?php
     if(!empty($_POST['message'])&&!empty($_POST['to']))
     {
      $message = trim($_POST['message']);
      $to = trim($_POST['to']);
      $from = getuserfield('username');
      $query = "INSERT INTO `sent_message` (`text`) values('$message')";
      $query_run=mysql_query($query);
      $query = "INSERT INTO `receive_message` (`text`) values('$message')";
      $query_run=mysql_query($query);
      $query_to = "Select * from users where `username` = '$to'";
      $query_run = mysql_query($query_to);
      if(mysql_num_rows($query_run)==1)
      {
        $query = "Insert into `messages` (`text`,`from`,`to`) values('$message','$from','$to')";
        $query_run = mysql_query($query);
      }
      else {
        echo "Please specfiy a valid username in \"to\" field!";
      }
    }
     ?></div>
     <form action="logoutlio.php" method="POST" id="logoutform">
       <input type="submit" value="Logout" id="logout">
     </form>
     <form action="getmessage.php" method="POST" id="filter" target="outputframe">
       <input type="text" name="messagefromto" placeholder="Username" class="searchfield">
       <input type="submit" name="searchmessage" value="Filter" id="search">
     </form>
   </div>




    <!--<div id="output"></div>-->
   <!--<div type= "text" name="messages" readonly="readonly" id="output"></div>-->
   <iframe src="getmessage.php" name="outputframe" id="output3"></iframe>
 <!--
<div id="friend" class='friends'>
  <form action="mainpagelio.php" method="POST">
  <input type="text" name="searchbar" placeholder="Search Friend" id="searchbar">
  <input type="submit" name="search" value="Search" id='search'>
</form>
<?php
/*if(!empty($_POST['searchbar']))
{
  $search = trim($_POST['searchbar']);
  $query = "Select * from `users` where `username` ='$search'";
  $query_run = mysql_query($query);
  if(mysql_num_rows($query_run)==0)
  {
    echo 'No results found';
  }
  else {
    echo "Username&nbsp&nbsp&nbsp&nbspFirst Name&nbsp&nbsp&nbsp&nbspLast Name".'<br>';
    while($data = mysql_fetch_row($query_run))
    {
      echo $data[1]."&nbsp&nbsp&nbsp&nbsp".$data[3]."&nbsp&nbsp&nbsp&nbsp".$data[4].'<br>';
    }
  }
}*/
?>
</div>
-->
 <br>
 <form action="mainpagelio.php" method="POST" id="formmessage">
  <input type="text" name="to" placeholder="Send to" id="messto">
  <textarea type="text" name='message' id='textmessage' placeholder="Enter message"></textarea>
  <input type="submit" name="sendmessage" value="Send" id="send">
 </form>
 </body>
</html>
