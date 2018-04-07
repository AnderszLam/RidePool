<!DOCTYPE html>
<html>

<head>
    <title> Ridepool - Post a Ride</title>
    <link rel="stylesheet" type="text/css" href="ridepool_style.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,900" rel="stylesheet">
</head>


<body>


    <h1>POST A RIDE</h1>
    <div class="background-bar" style="position: absolute; ; left:0px; top:100px ;width:100%;"></div>
    <form action="dashboard.php" method="post">
        <!--TO/FROM-->
        <h2 style="position: absolute; left: 50%; top: 110px;transform: translate(-250px,0);">FROM</h2>
        <select name="from" style="position: absolute; left: 50%; top: 160px;transform: translate(-250px,0);">
            <option value="Wilfrid Laurier University">Wilfrid Laurier University</option>
            <option value="University of Waterloo">University of Waterloo</option>
            <option value="University of Toronto">University of Toronto</option>
            <option value="University of Western Ontario">University of Western Ontario</option>
        </select>
        <h2 style="position: absolute; left:50%; top: 110px; transform: translate(50px,0);">TO</h2>
        <select name="dest" style="position: absolute; left: 50%; top: 160px;transform: translate(50px,0);">
            <option value="Wilfrid Laurier University">Wilfrid Laurier University</option>
            <option value="University of Waterloo">University of Waterloo</option>
            <option value="University of Toronto">University of Toronto</option>
            <option value="University of Western Ontario">University of Western Ontario</option>
        </select>
        <!-- DATE/TIME-->
        <h2 style="position: absolute; left: 50%; top: 210px;transform: translate(-250px,0);">DATE</h2>
        <input type="date" name="date" style="position: absolute; left: 50%; top: 260px;transform: translate(-250px,0);">
        <h2 style="position: absolute; left:50%; top: 210px; transform: translate(50px,0);">TIME</h2>
        <input type="time" name="time" value="12:00" style="position: absolute; left: 50%; top: 260px;transform: translate(50px,0);">
        <!-- MAX PRICE -->
        <h2 style="position: absolute; left: 50%; top: 310px;transform: translate(-250px,0);">PRICE</h2>
        <div style="font-family: Lato; font-weight: 300; line-height: normal; font-size: 18px;position: absolute; left: 50%; top: 360px;transform: translate(-250px,0);">
            $
            <input style="width:75px;" name="price" type="number" value="10.00" min="0" step="0.01" data-number-to-fixed="2" data-number-stepfactor="100">
        </div>
        <h2 style="position: absolute; left:50%; top: 310px; transform: translate(50px,0);">SEATS</h2>
        <input type="number" name="seats" value="4" min="0" style="position: absolute; left: 50%; top: 360px;transform: translate(50px,0); width:50px;">
        <a href="ridepost.php">
            <input type="submit" name="ridepost" class="bluebtn" style="position: absolute; top: 460px; left: 50%; width:150px;height:30px;transform: translate(-50%,0);font-size: 18px">
            </input>
        </a>
 
    </form>

    <div class="logout">
        <?php include('server.php');
            if (isset($_SESSION['username'])): ?>
            <p>Logged In As: <?php echo $_SESSION['username'];?>
            <p>
                <a href=accountpage.php class = "bluebtn" style="padding: 5px 8px; text-decoration: none">Account</a>
                <a href=login.php?logout='1'" class="bluebtn" style="padding: 5px 8px; text-decoration: none">Logout</a>
            </p>
        <?php endif ?>
    </div>

</body>
<footer>
    <a href="ridechoice.php">
        <div class="bluebtn" style="position:absolute; left:50%; margin:10px; padding:10px; width:75px; top:90%;transform:translate(-50%,0)">HOME</div>
</footer>

</html>