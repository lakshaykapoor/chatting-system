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
$query = "Select * from `messages` where `to` = '$username' and `from` Like '%$fromm%' or `from` = '$username' and `to` Like '%$fromm%'";
$query_run=mysql_query($query);
if($_SERVER['SCRIPT_NAME']!='/phpfiles/mainpagelio.php')
{
while($data = mysql_fetch_row($query_run))
{
  if($data[3]==$username)
  {
    echo '<div style="width:48vw; word-break:break-all; margin:5px; background-color: rgba(37,211,102,.9);color:rgba(255,255,255,1); padding:5px; position:relative; left:50%; float right; border-radius:10px;border-top-right-radius:0px;">: '.$data[4].'<br>';
    echo $data[1].'<br>';
    echo "$data[2]</div>";
  }
  else {
    echo '<p style="width:48vw; word-break:break-all; margin:5px; background-color: rgba(218,165,32,.9);color:rgba(255,255,255,1); border-radius:10px; padding:5px;border-top-left-radius:0px;">: '.$data[3].'<br>';
    echo "$data[1]<br>";
    echo "$data[2]</p>";
  }
}
}
 ?>
