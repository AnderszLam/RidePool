<!DOCTYPE html>
<html>

<head>
    <title> Ridepool </title>
    <link rel="stylesheet" type="text/css" href="ridepool_style.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,900" rel="stylesheet">
</head>

<body>

    <h1>WHAT ARE YOU LOOKING FOR?</h1>
    <div class="background-bar" style="position: absolute; ; left:0px; top:100px;">
    <a href="ridesearch.php">
        <div class="bluebtn" style=";position: absolute; top: 70px; left: 25%; width:20%;height:70%;">
            <p style="text-align: center;position: absolute; top: 50%; left: 50%; transform: translate(-50%, -70%);" )>A SEAT</p>
        </div>
    </a>
    <a href="ridepost.php">
        <div class="bluebtn" style="position: absolute; top: 70px; left: 55%; width:20%;height:70%;">
            <p style="text-align: center;position: absolute; top: 50%; left: 50%; transform: translate(-50%, -70%);">TO DRIVE</p>
        </div>
    </a>
</div>

    <div class="logout">
        <?php include('server.php');
            if (isset($_SESSION['username'])): ?>
            <p>Logged In As: <?php echo $_SESSION['username'];?>
            <p><a href=login.php?logout='1'" class="bluebtn" style="padding: 10px; text-decoration: none">Logout</a></p>
        <?php endif ?>
    </div>


</body>

</html>