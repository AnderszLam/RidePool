<head>

	<link rel="stylesheet" type="text/css" href="ridepool_style.css">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,900" rel="stylesheet">
</head>
<body>
	<?php if (count($errors) > 0): ?>
		<div class="error">
			<?php foreach ($errors as $error): ?>
				<p> <?php echo $error; ?></p>
			<?php endforeach ?>
		</div>
	<?php endif ?>
</body>
	


