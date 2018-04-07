<!DOCTYPE HTML>
<head>
    		<title> Ridepool - Ride Confirmed</title>
    		<link rel="stylesheet" type="text/css" href="ridepool_style.css">
    		<link href="https://fonts.googleapis.com/css?family=Lato:300,400,900" rel="stylesheet">
			</head>
			<body>
			
    		<h1>CONFIRMATION</h1>
    			<div class="logout">
        	<?php include('server.php');
            	if (isset($_SESSION['username'])): ?>
            	<p>Logged In As: <?php echo $_SESSION['username'];?>
            	<p><a href=login.php?logout='1' class="bluebtn" style="padding: 10px; text-decoration: none">Logout</a></p>
        	<?php endif ?>
    		</div>
    			<!--BACKGROUND BAR-->
    			<div class="background-bar" style="position: absolute; ; left:0px; top:100px;">

<?php
if(isset($_POST["confirmride"])) {
	$rideid = $_POST['post_id'];
	$db = mysqli_connect("localhost", "root", "", "ridepool");
	if (!$db) {
		die("MySQL connection error");
	}
		
	$query = "UPDATE ride_posts SET seats = seats -1 WHERE postID = '$rideid' and seats >0";
	$result = mysqli_query($db, $query);

	$query = "SELECT * FROM ride_posts WHERE postID='$rideid'";
	$result = mysqli_query($db, $query);
	$row = mysqli_fetch_row($result);
	echo '<h2 style="position: absolute; width: 500px; left: 50%; top: 10px; transform: translate(-50%,0);text-align:center;">YOUR RIDE IS CONFIRMED</h2>';

		echo'<table style=\'position: absolute; left: 50%; top: 70px; transform: translate(-50%,0);\'>';
		echo '<tr><th colspan="2">RIDE INFORMATION</th>';
		echo'<tr><td>From:</td><td style="text-align:left;">' . $row[2] . '</td></tr>';
		//email
		echo'<tr><td>To:</td><td style="text-align:left;">' . $row[3] . '</td></tr>';
		//phone
		echo '<tr><td>Date:</td><td style="text-align:left;">' . $row[4] . '</td></tr>';
		echo '<tr><td>Time:</td><td style="text-align:left;">' . $row[5] . '</td></tr>';
		echo '<tr><td>Price:</td><td style="text-align:left;">$ ' . $row[6] . '</td></tr>';
		echo '</table>';
		echo '<footer><a href="ridechoice.php"><div class="bluebtn" style="position:absolute; left:50%;  padding:10px; width:75px; top:90%; transform:translate(-50%,0)">HOME</div></footer>';
}

?>