<?php if (count($errors) > 0): ?>
	<div class="error" >
		<?php foreach ($errors as $errors): ?>
			<php> <?php echo $error; ?></php>
		<?php endforeach ?>
	</div>
<?php endif ?>
