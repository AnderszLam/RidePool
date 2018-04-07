<!DOCTYPE HTML>
<?php
require_once('generate_ridelist.php'); //import other php files
require_once('driver.php');
require_once('rider.php');
require_once('server.php');

if(isset($_POST["ridesearch"])) { //handler for the search for a ride button
	//retrieve user inputs from html form
	$from_set = $_POST["from"];
	$to_set = $_POST["dest"];
	$date_set = $_POST["date"];
	$time1_set = $_POST["time-earliest"];
	$time2_set = $_POST["time-latest"];
	$price_set = $_POST["price"];
	
	$rider = new rider(); // construct new rider object
	$rider->setPrefs($from_set, $to_set, $date_set, $time1_set, $time2_set, $price_set, NULL); //set the private instance variables of a rider object
	
	//get the instance variables from a rider object
	$from_get = $rider->getFrom();
	$to_get = $rider->getTo();
	$date_get = $rider->getDate();
	$time1_get = $rider->getTime1();
	$time2_get = $rider->getTime2();
	$price_get = $rider->getPrice();
	
	$results = $rider->search_ride($from_get, $to_get, $date_get, $time1_get, $time2_get, $price_get); //call the search_ride method of the rider class, will return an array containing the search results

	$generate = new generate_ridelist(); //create generate ridelist object
	$generate->list_search($results); //create html table suing search results array
} 

else if(isset($_POST["ridepost"])) { //handler for the post a ride button
	$from_set = $_POST["from"];
	$to_set = $_POST["dest"];
	$date_set = $_POST["date"];
	$time_set = $_POST["time"];
	$price_set = $_POST["price"];
	$seats_set = $_POST["seats"];
	
	$driver = new driver(); //construct new driver object
	$driver->setPrefs($from_set, $to_set, $date_set, $time_set, NULL, $price_set, $seats_set); //set the private instance variables of a driver object
	
	//get the instance variables from a driver object
	$from_get = $driver->getFrom();
	$to_get = $driver->getTo();
	$date_get = $driver->getDate();
	$time_get = $driver->getTime1();
	$price_get = $driver->getPrice();
	$seats_get = $driver->getSeats();
	$driver->post_ride($from_get, $to_get, $date_get, $time_get, $price_get, $seats_get); //call the post_ride method to process a post ride request
	
	$generate = new generate_ridelist();
	$generate->list_all();
	
} else if (isset($_POST["showallrides"])){ // handler for the show all rides button
	$generate = new generate_ridelist();
	$generate->list_all();
}

?>
</html>