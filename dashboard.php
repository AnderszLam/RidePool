<!DOCTYPE HTML>
<?php
if (!isset($_SESSION)) {
	session_start();
}
require_once('generate_ridelist.php');
require_once('driver.php');
require_once('rider.php');

if(isset($_POST["ridesearch"])) {
	$from = $_POST["from"];
	$to = $_POST["dest"];
	$date = $_POST["date"];
	$time1 = $_POST["time-earliest"];
	$time2 = $_POST["time-latest"];
	$price = $_POST["price"];
	
	$rider = new rider();
	$rider->setPrefs($from, $to, $date, $time1, $time2, $price, NULL);
	$results = $rider->search_ride($from, $to, $date, $time1, $time2, $price);

	$generate = new generate_ridelist();
	$generate->list_search($results);
} 

else if(isset($_POST["ridepost"])) {
	$from = $_POST["from"];
	$to = $_POST["dest"];
	$date = $_POST["date"];
	$time = $_POST["time"];
	$price = $_POST["price"];
	$seats = $_POST["seats"];
	
	$driver = new driver();
	$driver->setPrefs($from, $to, $date, $time, NULL, $price, $seats);
	$driver->post_ride($from, $to, $date, $time, $price, $seats);
	
	$generate = new generate_ridelist();
	$generate->list_all();
	
}


?>
</html>