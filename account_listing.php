<?php
final class generate_accountlist {

    public static function account_list() { // generates a formatted html table of all available rides in the sql table
        $userid = $_SESSION["userid"];
        $db = mysqli_connect("localhost", "root", "", "ridepool");
        if (!$db) 
            die("MySQL connection error");
        
        $query = "SELECT * FROM ride_posts WHERE postID in (SELECT postID FROM riderlog WHERE userID = $userid)"; //sql query for all contents of the table
        $result = mysqli_query($db, $query);
        $count = mysqli_num_rows($result);
        
        echo '<table style=\'position: absolute; left: 50%; top: 90px; transform: translate(-50%,0);\'>';

        echo '<tr> <th> PICKUP </th> <th> DESTINATION </th> <th> DATE </th>
            <th> TIME </th> <th> PRICE </th>
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
                echo '</tr>';
                
                $indexer = $indexer - 1;
            }
        }

        echo '</table>';
        echo '</div>';
        echo'</body>
        <footer>
    <a href="ridechoice.php">
        <div class="bluebtn" style="position:absolute; left:50%; margin:10px; padding:10px; width:75px; top:90%;transform:translate(-50%,0)">HOME</div>
</footer>';
        mysqli_close($db);
   }
}
   ?>