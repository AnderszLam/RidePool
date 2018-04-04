<!DOCTYPE HTML>
<?php
if(isset($_POST["selectride"])) {
	include('server.php');
	$userid = $_POST['row_id'];
	//echo '<p>' . $userid . '</p>';
	$db = mysqli_connect("localhost", "root", "", "ridepool");
	if (!$db) 
		die("MySQL connection error");
		
	$query = "SELECT * FROM users WHERE id='$userid'";
	$result = mysqli_query($db, $query);
	$count = mysqli_num_rows($result);
		
	if ($count == 1) {
		
		$query = "SELECT email FROM users WHERE id='$userid'"; 
		$result = mysqli_query($db, $query);
		$row = mysqli_fetch_row($result);
		
		echo '<p>' . $row[0] . '</p>';
		
		$query = "SELECT phone FROM users WHERE id='$userid'"; 
		$result = mysqli_query($db, $query);
		$row = mysqli_fetch_row($result);
		
		echo '<p>' . $row[0] . '</p>';
	}
}
?>
</html>