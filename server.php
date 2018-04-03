<?php 

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
		}
	}

?>