<?php
	if(isset($_POST['pass'])){
		$email = $_POST['email'];
		$pass = $_POST['pass'];

		$servername = "179.188.17.66";
		$username = "arietedi_nutri";
		$password = "Sabedoria321*_";
		$dbname = "arietedi_nutri";

		// Create connection
		$conn = new mysqli($servername, $username, $password, $dbname);
		// Check connection
		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		} 

		$sql = "SELECT USU_EMAIL,USU_SENHA FROM arietedi_nutri.usu_usuarios WHERE USU_EMAIL ='".$email."' AND USU_SENHA ='".$pass."'";
		$result = $conn->query($sql);

		if ($result->num_rows > 0 and $result->num_rows < 2) {
			session_start();
			$_SESSION['login'] = $email;
			$_SESSION['pass'] = $pass;
		} else {
			echo "error";
		}
		$conn->close();	
	}else{
		$email = $_POST['email'];
		$token = $_POST['token'];

		$servername = "179.188.17.66";
		$username = "arietedi_nutri";
		$password = "Sabedoria321*_";
		$dbname = "arietedi_nutri";

		// Create connection
		$conn = new mysqli($servername, $username, $password, $dbname);
		// Check connection
		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		} 

		$sql = "SELECT USU_EMAIL,USU_LOGIN FROM arietedi_nutri.usu_usuarios WHERE USU_EMAIL ='".$email."' AND USU_LOGIN ='".$token."'";
		$result = $conn->query($sql);

		if ($result->num_rows > 0 and $result->num_rows < 2) {
			session_start();
			$_SESSION['login'] = $email;
			$_SESSION['pass'] = $token;
		} else {
			echo "error";
		}
		$conn->close();	
	}
	