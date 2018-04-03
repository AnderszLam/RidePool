<?php 
	//start the session for logging in
	session_start();
	
	//connect to the rider database
	$errors = array();
	$database = mysqli_connect('localhost','root', '', 'ridepool');
	
	//if signup is clicked
	if (isset($_POST['register'])) {
		//form fields
		//real escape string is used here to avoid special characters (spaces, delimiters)
		$username = mysqli_real_escape_string($database,$_POST['username']);
		$email = mysqli_real_escape_string($database,$_POST['email']);
		$pass = mysqli_real_escape_string($database, $_POST['pass']);
		$passr = mysqli_real_escape_string($database,$_POST['passr']);
		$fname = mysqli_real_escape_string($database,$_POST['fname']);
		$lname = mysqli_real_escape_string($database,$_POST['lname']);
		$phone = mysqli_real_escape_string($database,$_POST['phone']);

		if ($pass != $passr) {
			array_push($errors, "passwords do not match");
		}

		// if there are no errors, save the user to the database

		if (count($errors) == 0) {
			$email = md5($email); //encrypt email before storing in database for security
			$passencr = md5($pass); //encrypt password for storing for security
			$sql = "INSERT INTO users (username, fname, lname, email, password, phone) VALUES ('$username', '$fname', '$lname', '$email', '$passencr', '$phone')";
			mysqli_query($database, $sql);
			$_SESSION['username'] = $username;
			$_SESSION['success'] = "You are logged in";
			header('location: ridechoice.html'); // redirect to ridechoice
		}
	}

	//log user in from the login.php page
	if (isset($_POST['login'])) {
		$username = mysqli_real_escape_string($database,$_POST['username']);
		$passl = mysqli_real_escape_string($database, $_POST['passl']);
		$passl = md5($passl);
		$compare = "SELECT * FROM users WHERE username = '$username' AND password = '$passl'";
		$result = mysqli_query($database, $compare);
		if (mysqli_num_rows($result) == 1) {
			//log the user into website
			$_SESSION['username'] = $username;
			$_SESSION['success'] = "you logged in";
			header('location: ridechoice.html');
		}else {
			array_push($errors, "wrong information");
			header("location: login.php");
		}
	}


?>