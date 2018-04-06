<?php include('server.php'); ?>

<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="ridepool_style.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:900" rel="stylesheet">
<body>

<form method="post" action="login.php">
  <div class="container">
    <h1>LOGIN</h1>
    <div class="background-bar" style="position: absolute; ; left:0px; top:100px ;width:100%;"></div>

    <div class="login"> 
      <div class="input-group">
        <h2 style="position: absolute; left: 50%; top: 210px;transform: translate(-250px,0);">USERNAME</h2>
      <input type="text" placeholder="Enter Username" name="username" required style="position: absolute; left: 50%; top: 260px;transform: translate(-250px,0);">
      </div>

      <div class="input-group">
        <h2 style="position: absolute; left:50%; top: 210px; transform: translate(50px,0);">PASSWORD</h2>
      <input type="password" placeholder="Enter Password" name="passl" required style="position: absolute; left: 50%; top: 260px;transform: translate(50px,0);">
      </div>
      
<!--       <label>
        <input type="checkbox" checked="checked" name="remember" style="position: absolute; top: 200px;"> Remember me
      </label> -->
      
      <p></p>

  </div>

    <div class="accept">
     <button class = "bluebtn" style="position: absolute; left: 50%; top: 350px; width: 80px; transform: translate(-50%,0); padding:15px;" type="submit" name="login" class="loginbtn">LOGIN</button>

      <h2 style="text-align:center; position: absolute; text-align: center;left: 50%; top: 400px;transform: translate(-50%,0); padding:15px;">CREATE AN ACCOUNT</h2>

      <a href="register.php">
        <div class="bluebtn" style="position: absolute; text-align: center; left: 50%; top: 475px;transform: translate(-50%,0); padding:15px;">REGISTER</div>
      </a>
    </div>
  </div>
</form>

</body>
</html>

