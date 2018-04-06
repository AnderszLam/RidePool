<?php


class main_operations {
   public static function post_ride($from, $to, $date, $time, $price, $seats) { //stores an user's inputed ride into the sql table
		//session_start();
		$db = mysqli_connect("localhost", "root", "", "ridepool");
		if (!$db) 
			die("MySQL connection error");
		include('server.php');
		$userid = $_SESSION['userid']; //retreive user id from session variable
		
		$inuid = $userid;
		$infrom = mysqli_real_escape_string($db, $from); //prepare data to be stored in sql table
		$into = mysqli_real_escape_string($db, $to); //prepare data to be stored in sql table
		$indate = mysqli_real_escape_string($db, $date); //prepare data to be stored in sql table
		$intime = mysqli_real_escape_string($db, $time); //prepare data to be stored in sql table
		$inprice = mysqli_real_escape_string($db, $price); //prepare data to be stored in sql table 
		$inseats = mysqli_real_escape_string($db, $seats); //prepare data to be stored in sql table
		
		$query = "INSERT INTO ride_posts (poster, pickup, dest, date, time, price, seats) VALUES ('$inuid', '$infrom', '$into', '$indate', '$intime','$inprice','$inseats')"; //sql query
		
		$result = mysqli_query($db, $query); //send query to sql
		
		mysqli_close($db); 
   }
   public static function search_ride($from, $to, $date, $time1, $time2, $mprice) { //searches the sql table for the user's search parameters
	   $db = mysqli_connect("localhost", "root", "", "ridepool");
		if (!$db) 
			die("MySQL connection error");
		
		$sdate = $date;
		$query = "SELECT * FROM ride_posts WHERE pickup='$from' AND dest='$to' AND date='$date' AND seats > 0"; //sql query for the initial results that will match the from, to, and data parameters
		$result = mysqli_query($db, $query);  //send query to sql
		$count = mysqli_num_rows($result); //count the number of initial results from the search
		$search_results = array(); //create empty array to store the final search results
		
		if ($count >= 1) {
			while ($row = mysqli_fetch_array($result)) {
				if ($row['time'] >= $time1 && $row['time'] <= $time2 && $mprice >= $row['price']) { //further refines the initial search results, by matching the time and price search parameters
					array_push($search_results, $row); //if all criterias match, insert into the array
				}
			}
		}
		
		return $search_results; //return the search results
   }
}

?>
