
<!DOCTYPE html>
<html>
<head>
	<title>Deporte - TU OPINION</title>
	<link rel="stylesheet" type="text/css" href="style.css">
  <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
	<style type="text/css">
		.left{
			margin-left: 1%;
		}
	</style>
</head>
<body>
 <div class="nav">
  <div class="nav-header">
  <div class="nav-title">
      <font color="yellow" size="5"><b>TU OPINIÓN</b></font> <font color="#cf8cea">Todo lo que buscas</font>
    </div>
  </div>
  <div class="nav-btn">
    <label for="nav-check">
      <span></span>
      <span></span>
      <span></span>
    </label>
  </div>
    <input type="checkbox" id="nav-check">
  <div class="nav-links" >
<a class="active" href="index.php"><img src="images/home.png" width="20px"></img>&nbsp;Home</a>
  <a href="technology.php"><img src="images/technology.png" width="20px"></img>&nbsp;Tecnología</a>
  <a href="sports.php"><img src="images/sports.png" width="20px"></img>&nbsp;Deportes</a>
  <a href="health.php"><img src="images/health.png" width="20px"></img>&nbsp;Salud</a>
  <a href="travel.php"><img src="images/travel.png" width="20px"></img>&nbsp;Turismo</a>
  <a href="entertainment.php"><img src="images/entertainment.png" width="20px"></img>&nbsp;Entretenimiento</a>

    <?php session_start(); if(!isset($_SESSION['ID']))
      {
        
        echo "<a href='admin/login.php'>&nbsp;<img src='images/user.png' width='20px'>&nbsp;Login/Register</a>";
      }
        else {
        
        echo "<a href='admin/logout.php'><img src='images/user.png' width='20px'>&nbsp;Logout</a><a href='admin/index.php'><img src='images/settings-gears.png' width='20px'>&nbsp;Dashboard</a>";
      }
        ?>
  

  </div>

	<div class="container">
		<div class="left">

			<?php
include("config.php");
$sql = "SELECT Post_ID,title,description,author,featured from posts where status='publish' and category='Sports'order by date desc limit 10;";
$result = $db->query($sql);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
    	
    	$sql2 = "SELECT Name from users where email='".$row['author']."';";
    	
$result2 = $db->query($sql2);
$row2 = $result2->fetch_assoc();
        echo "<div class='articlelink'>
               <img src='admin/uploads/".$row['featured']."' width='100%' height='70%' class='articimage'><br>
               <div class='contentcontainer'>
               <label class='titlehai' style='margin-top:5px;'>".$row['title']."</label><br>
               <label><img src='images/man-user.png' width='20px' style='margin-top:5px;'></img>&nbsp; ".$row2['Name']."</label><br>
               
               <a href='view-post.php?pid=".$row['Post_ID']."'><input type='button' style='cursor:pointer; margin-top:5px;' class='read' value='Leer más' ></a>
               </div>
			</div>	";
    }
} else {
    echo "No Posts Yet";
}
$db->close();
?>

					
		</div>
		
	</div>

<footer class="fut" align="center"><p>TU OPINION 2020</p></footer>
</body>
</html>