<!-- It's RESPONSIVE TOO! -->
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Login Page</title>
		<meta name="author" content="https://github.com/portapipe/Login-GroceryCrud" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/login/css/bootstrap.min.css">
		<style>
			.modal-footer {   border-top: 0px; }
		</style>
	</head>
	<body>
	<!--login form-->
	<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
	  <div class="modal-dialog">
	  <div class="modal-content">
	      <div class="modal-header">
	          <button type="button" class="close hidden" data-dismiss="modal" aria-hidden="true">×</button>
	          <h1 class="text-center">Login Page</h1>
	      </div>
	      <div class="modal-body">
	          <form class="form col-md-12 center-block" action="<?=base_url();?>login/makeLogin" method="post">
	            <div class="form-group">
	              <input type="text" name="username" class="form-control input-lg" placeholder="Username">
	            </div>
	            <div class="form-group">
	              <input type="password" name="password" class="form-control input-lg" placeholder="Password">
	            </div>
	            <div class="form-group">
	              <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
	              <span class="pull-right"><?php if(isset($error)) echo "<b><span style='color:red;'>$error</span></b>"; ?></span>
	            </div>
	          </form>
	      </div>
	      <div class="modal-footer ">
	          <div class="col-md-12">
	          <button class="btn hidden" data-dismiss="modal" aria-hidden="true">&nbsp;</button>
			  </div>
	      </div>
	  </div>
	  </div>
	</div>
	<script src="<?php echo base_url(); ?>assets/login/js/jquery.min.js">
	</body>
</html>
