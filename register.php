<?php include('server.php'); ?>

<!DOCTYPE html>
<html>

<head>
    <title> Ridepool - Registration</title>`
    <link rel="stylesheet" type="text/css" href="ridepool_style.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,900" rel="stylesheet">
</head>

<body>
    <form method="post" action="register.php">
        <!-- display validation error -->
        <?php include ('errors.php'); ?>

        <div class="container">
            <h1>REGISTRATION</h1>
           <div class="background-bar" style="position: absolute; ; left:0px; top:100px ;width:100%;">
                <form action="#" target="_blank">
                    <label style="position: absolute; left: 50%; top: 10px;transform: translate(-250px,0);" for="username"><h2>USERNAME</h2></label>
                    <input style="position: absolute; left: 50%; top: 60px;transform: translate(-250px,0);" type="text" placeholder="Enter Username" name="username" required>
 
                    <label style="position: absolute; left: 50%; top: 10px;transform: translate(50px,0);" for="email"><h2>EMAIL</h2></label>
                    <input style="position: absolute; left: 50%; top:60px;transform: translate(50px,0);" type="text" placeholder="Enter Email" name="email" required>

                    <label style="position: absolute; left: 50%; top: 110px;transform: translate(-250px,0);" for="pass"><h2>PASSWORD</h2></label>
                    <input style="position: absolute; left: 50%; top: 160px;transform: translate(-250px,0);" type="password" placeholder="Enter Password" name="pass" required>

                    <label style="position: absolute; left: 50%; top: 110px;transform: translate(50px,0);" for="passr"><h2>REPEAT PASSWORD</h2></label>
                    <input style="position: absolute; left: 50%; top: 160px;transform: translate(50px,0);" type="password" placeholder="Repeat Password" name="passr" required>

                    <label style="position: absolute; left: 50%; top: 210px;transform: translate(-250px,0);" for="fname"><h2>FIRST NAME</h2></label>
                    <input style="position: absolute; left: 50%; top: 260px;transform: translate(-250px,0);" type="text" placeholder="Enter First Name" name="fname" required>

                    <label style="position: absolute; left: 50%; top: 210px;transform: translate(50px,0);" for="lname"><h2>LAST NAME</h2></label>
                    <input style="position: absolute; left: 50%; top: 260px;transform: translate(50px,0);" type="text" placeholder="Enter Last Name" name="lname" required>

                    <label style="position: absolute; left: 50%; top: 310px;transform: translate(-250px,0);" for="phone"><h2>PHONE</h2></label>
                    <input style="position: absolute; left: 50%; top: 360px;transform: translate(-250px,0);" type="text" placeholder="Enter Phone" name="phone" required> 
                </form>


                <!-- buttons in php signup form -->

                <button class = "bluebtn" style="position: absolute; left: 50%; top: 400px;transform: translate(-100px,0); padding:15px;" type="submit" name="register" class="signupbtn">SIGN UP</button>

                <button class = "bluebtn" style="position: absolute; left: 50%; top: 400px;transform: translate(0,0); padding:15px;" type="button" name="cancelreg" class="cancelbtn" onClick="document.location.href='login.php'">CANCEL</button>
            </div>                
        </div>
    </form>
</body>

</html>