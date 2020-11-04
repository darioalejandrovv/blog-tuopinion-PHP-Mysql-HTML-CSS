<?php
if(isset($_POST['submit']))
{
	$name=$_POST['name'];
	$email=$_POST['email'];
	$pass=md5($_POST['pass']);
	include('config.php');

	$sql = "SELECT * from users WHERE Email='$email'" ;

  $queryResult = $db->query($sql);
$foundRows = $queryResult->num_rows;
echo $foundRows;

  if($foundRows>0 ){
    echo "<script type='text/javascript'>alert('This Email is already registered.')</script>";
   }
   else
   {
   	$sql = "insert into users (Name,Email,Password,Created) values ('$name','$email','$pass',CURDATE())";
 
 if(mysqli_query($db, $sql)){
 header("Location: admin/login.php");
 }
   }
	
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Registro - TU OPINION</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<style type="text/css">
		.regi{
			margin-top: 20px;
			width:40%;
			border-radius: 10px;
			border: 1px solid #833299;
			height: 580px;
			box-shadow: 10px 10px #f5e7e7;
		}
		p
		{
			font-family: Arial;
			font-size: 4;
			color: #833299;
		}
		 label,input[type=text],input[type=email],input[type=password]
		 {
		 	width:200px;
		 	margin-top: 5px;
		 	font-family: Arial;
			font-size: 4;
			color: #833299;
			border-radius: 5px;
			padding: 5px 10px 5px 5px;
		 }
		 input[type=submit]
		 {
		 	background-color: #833299;
		 	color: white;
		 	padding: 10px 15px 10px 15px;
		 	border-radius: 10px;
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
  
	</div>
<div align="center">
	<div class="regi" align="center" >
		<p align="center"><br><b>Bienvenido a nuestro Board</b><br><br>Estas a unos pocos pasos de tu nuevo POST</p>
		<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="POST">
			<label>Nombre</label>
			<br>
			<input type="text" name="name" placeholder="Enter Your Full Name" required="" /><br><br>
			<label>EMAIL</label>
			<br>
			<input type="email" name="email" placeholder="Enter Your Email ID Here" required="" />
			<br><br>
			<label>Contraseña</label><br>
			<input type="Password" name="pass" id="pass" placeholder="Enter Your Password" required="" /><br><br>
			<label>Confirma contraseña</label><br>
			<input type="Password" name="pass" id="passconfirm"placeholder="Enter Password Again" required="" />
			<br><br>
			<input type="submit" name="submit" onclick="return check()" value="REGISTER"/>
		</form><br>
		<label>¿Ya tienes una cuenta?<a href="admin/login.php">INGRESA</a></label>
		
	</div>
</div>
<footer class="fut" align="center"><p>TU OPINION 2020</p></footer>
</body>
<script type="text/javascript">
	function check()
	{
		var p1=document.getElementById('pass').value;
		var p2=document.getElementById('passconfirm').value;
		if(p1==p2)
		{
			return true;
		}
		else
		{
			alert("Your Passwords Do Not Match");
			return false;
		}
	}

</script>
</html>