<head>
    <title> Ridepool - Your Account</title>
    <link rel="stylesheet" type="text/css" href="ridepool_style.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,900" rel="stylesheet">

</head>
<body>

    <h1>RIDES AVAILABLE</h1>
        <div class="logout">
        <?php include('server.php');
            if (isset($_SESSION['username'])): ?>
            <p>Logged In As: <?php echo $_SESSION['username'];?>
            <p>
                <a href=login.php?logout='1'" class="bluebtn" style="padding: 5px 8px; text-decoration: none">Logout</a>
            </p>
        <?php endif ?>
    </div>
    <!--BACKGROUND BAR-->
    <div class="background-bar" style="position: absolute; ; left:0px; top:100px;    overflow-y: scroll;">
    

    </div>