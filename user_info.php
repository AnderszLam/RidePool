<!DOCTYPE HTML>
<?php
if(isset($_POST["selectride"])) {
	include('server.php');
	$userid = $_SESSION['userid_post'];
	echo '<p>' . $userid . '</p>';
	$db = mysqli_connect("localhost", "root", "", "ridepool");
	if (!$db) 
		die("MySQL connection error");
		
	$query = "SELECT * FROM users WHERE id='$userid'";
	$result = mysqli_query($db, $query);
	$count = mysqli_num_rows($result);
		
	if ($count == 1) {
		$row = mysqli_fetch_row($result);
		$email_print = md5($row['email']);
		
		echo '<p>' . $email_print . '</p>';
		echo '<p>' . $row['phone'] . '</p>';
	}
}
?>
</html>