<head>
    <title> Ridepool - Your Account</title>
    <link rel="stylesheet" type="text/css" href="ridepool_style.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,900" rel="stylesheet">

</head>
<body>

    <h1>YOUR ACCOUNT</h1>
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
    

    <?php
    require_once('account_listing.php');
    $userid = $_SESSION["userid"];
    $username = $_SESSION['username'];


        echo '<h2 style="position: absolute; left: 50%; top: 10px;transform: translate(-250px,0);">USERNAME</h2>
        <p style="position: absolute; font-family: Lato; left: 50%; top: 10px;transform: translate(-250px,30px);">' . $username . '</p>';

        $generate = new generate_accountlist();
        $generate->account_list();




    ?>
    </div>
    