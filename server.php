<?php 

	//connect to the rider database


	$database = mysqli_connect('localhost','root', '', 'ridepool');
	
	//if signup is clicked
	if (isset($_POST['register'])) {
		//form fields
		//real escape string is used here to avoid special characters (spaces, delimiters)
		$username = mysql_real_escape_string($_POST['username']);
		$email = mysql_real_escape_string($_POST['emai']);
		$pass = mysql_real_escape_string($_POST['pass']);
		$passr = mysql_real_escape_string($_POST['passr']);
		$fname = mysql_real_escape_string($_POST['fname']);
		$lname = mysql_real_escape_string($_POST['lname']);
		$phone = mysql_real_escape_string($_POST['phone']);

		// if there are no errors, save the user to the database
		if (count($errors) == 0) {
			$email = md5($email); //encrypt email before storing in database for security
			$pass = md5($pass); //encrypt password for storing for security
			$sql = "INSERT INTO users (username, fname, lname, email, password, phone) VALUES ('$username','$fname', '$lname', '$email', '$pass', '$phone')";
			mysqli_query($database, $sql);
		}


	}

?>