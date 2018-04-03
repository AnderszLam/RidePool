<?php
final class generate_ridelist {
   public static function list_all() {
	   session_start();
		$db = mysqli_connect("localhost", "root", "", "ridepool");
		if (!$db) 
			die("MySQL connection error");
		
		$query = "SELECT * FROM users";
		$result = mysqli_query($db, $query);
		$count = mysqli_num_rows($result);
		
		echo '<table style=\'position: absolute; left: 50%; top: 110px; transform: translate(-50%,0);\'>';
		if ($count >= 1) {
			while($row = mysqli_fetch_array($result)) {
				echo '<tr>';
				echo '<td>' . $row['Username'] . '</td>';
				echo '<td>' . $row['First Name'] . '</td>';
				echo '<td>' . $row['Last Name'] . '</td>';
				echo '</tr>';
			}
		}
		echo '</table>';
		mysqli_close($db);
   }
   
   public static function list_search() {
		
   }
}

?>