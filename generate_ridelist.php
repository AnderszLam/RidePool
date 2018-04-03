<?php
final class generate_ridelist {
   public static function list_all() {
	   //session_start();
		$db = mysqli_connect("localhost", "root", "", "ridepool");
		if (!$db) 
			die("MySQL connection error");
		
		$query = "SELECT * FROM ride_posts";
		$result = mysqli_query($db, $query);
		$count = mysqli_num_rows($result);
		
		echo '<table style=\'position: absolute; left: 50%; top: 110px; transform: translate(-50%,0);\'>';
		if ($count >= 1) {
			//$row = mysqli_fetch_array($result)
			$rows = mysqli_num_rows($result);
			$indexer = $rows - 1;
			while($indexer >= 0) {
				mysqli_data_seek($result, $indexer);
				$row = mysqli_fetch_array($result);
				echo '<tr>';
				echo '<td>' . $row['pickup'] . '</td>';
				echo '<td>' . $row['dest'] . '</td>';
				echo '<td>' . $row['date'] . '</td>';
				echo '<td>' . $row['time'] . '</td>';
				echo '<td>' . $row['price'] . '</td>';
				echo '<td>' . $row['seats'] . '</td>';
				echo '</tr>';
				$indexer = $indexer - 1;
			}
		}
		echo '</table>';
		mysqli_close($db);
   }
   
   public static function list_search($list) {
		$rows = count($list);
		$indexer = $rows - 1;
		echo '<table style=\'position: absolute; left: 50%; top: 110px; transform: translate(-50%,0);\'>';
		while($indexer >= 0) {
			echo '<tr>';
			echo '<td>' . $list[$indexer]['pickup'] . '</td>';
			echo '<td>' . $list[$indexer]['dest'] . '</td>';
			echo '<td>' . $list[$indexer]['date'] . '</td>';
			echo '<td>' . $list[$indexer]['time'] . '</td>';
			echo '<td>' . $list[$indexer]['price'] . '</td>';
			echo '<td>' . $list[$indexer]['seats'] . '</td>';
			echo '</tr>';
			$indexer = $indexer - 1;
		}
		echo '</table>';
   }
}

?>