<head>
    		<title> Ridepool - Rides Available</title>
    		<link rel="stylesheet" type="text/css" href="ridepool_style.css">
    		<link href="https://fonts.googleapis.com/css?family=Lato:300,400,900" rel="stylesheet">
			</head>
			<body>
    			<h1>RIDES AVAILABLE</h1>
    			<!--BACKGROUND BAR-->
    			<div class="background-bar" style="position: absolute; ; left:0px; top:100px;    overflow-y: scroll;">
<?php
final class generate_ridelist {
   public static function list_all() { // generates a formatted html table of all available rides in the sql table
		$db = mysqli_connect("localhost", "root", "", "ridepool");
		if (!$db) 
			die("MySQL connection error");
		
		$query = "SELECT * FROM ride_posts WHERE seats > 0"; //sql query for all contents of the table
		$result = mysqli_query($db, $query);
		$count = mysqli_num_rows($result);
		
		echo '<table style=\'position: absolute; left: 50%; top: 10px; transform: translate(-50%,0);\'>';

		echo '<tr> <th> PICKUP </th> <th> DESTINATION </th> <th> DATE </th>
            <th> TIME </th> <th> PRICE </th> <th> SEATS LEFT </th> <th> SELECT </th>
        	</tr>';
		if ($count >= 1) {
			$rows = mysqli_num_rows($result);
			$indexer = $rows - 1;
			while($indexer >= 0) {
				mysqli_data_seek($result, $indexer); //adjust the pointer so that the most recent posted rides in the sql table will be retrieved first and the most oldest will be retrieved last
				$row = mysqli_fetch_array($result); //fetch the ride
				echo '<tr class="rows">';
				echo '<td>' . $row['pickup'] . '</td>'; //print the contents of the results, containing the information of the ride
				echo '<td>' . $row['dest'] . '</td>';
				echo '<td>' . $row['date'] . '</td>';
				echo '<td>' . $row['time'] . '</td>';
				echo '<td>' . $row['price'] . '</td>';
				echo '<td>' . $row['seats'] . '</td>';
				echo '<td> <a href="#"><form action="user_info.php" method="post">
				<input type="hidden" value="'.$row['poster'].'" name="row_id"/>
				<input type="hidden" value="'.$row['postID'].'" name="post_id"/>

				<input type="submit" name="selectride" value="SELECT" class="bluebtn"></input>
				
				</form></a></td>';
				echo '</tr>';
				
				$indexer = $indexer - 1;
			}
		}

		echo '</table>';
		echo '</div>';
		echo'</body>
		<footer>
    <a href="ridechoice.html">
        <div class="bluebtn" style="position:absolute; left:50%; margin:10px; padding:10px; width:75px; top:90%;transform:translate(-50%,0)">HOME</div>
</footer>';
		mysqli_close($db);
   }
   
   public static function list_search($list) { //takes an array of rider posts that was produced from the ride_search function from main_operations, and prints the contents into a html table
		$rows = count($list); //count the length of the array
		$indexer = $rows - 1; //adjust for referencing the last index of the array (as it will be the most recent post)
		echo '<table style=\'position: absolute; left: 50%; top: 10px; transform: translate(-50%,0);\'>';
			echo '<tr>
            <th> PICKUP </th>
            <th> DESTINATION </th>
            <th> DATE </th>
            <th> TIME </th>
            <th> PRICE </th>
            <th> SEATS LEFT </th>
            <th> SELECT </th>
        	</tr>';
		while($indexer >= 0) {
			echo '<tr class="rows">';
			echo '<td>' . $list[$indexer]['pickup'] . '</td>'; //print the contents of the results, containing the information of the ride
			echo '<td>' . $list[$indexer]['dest'] . '</td>';
			echo '<td>' . $list[$indexer]['date'] . '</td>';
			echo '<td>' . $list[$indexer]['time'] . '</td>';
			echo '<td>' . $list[$indexer]['price'] . '</td>';
			echo '<td>' . $list[$indexer]['seats'] . '</td>';
			echo '<td><form action="user_info.php" method="post"> 
				<input type="hidden" value="'.$list[$indexer]['poster']. '" name="row_id"/>
				<input type="hidden" value="'.$list[$indexer]['postID']. '" name="post_id"/>
				<input type="submit" name="selectride" class="bluebtn"value="SELECT" ></input></form></td>';
			echo '</tr>';
			$indexer = $indexer - 1; //decrement the index pointer of the array
		}
		echo '</table>';
		echo '</div>';
			echo'</body>
		<footer><a href="ridechoice.html"><div class="bluebtn" style="position:absolute; left:50%; margin:10px; padding:10px; width:75px; top:90%;transform:translate(-50%,0)">HOME</div></footer>';	
   }

}

?>
