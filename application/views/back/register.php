<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Login - Sistem Informasi Sosialisasi</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">

	<link href="<?= base_url() ?>assets/back/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="<?= base_url() ?>assets/back/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

	<link href="<?= base_url() ?>assets/back/css/font-awesome.css" rel="stylesheet">
	<link href="<?= base_url() ?>assets/back/http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">

	<link href="<?= base_url() ?>assets/back/css/style.css" rel="stylesheet" type="text/css">
	<link href="<?= base_url() ?>assets/back/css/pages/signin.css" rel="stylesheet" type="text/css">

</head>

<body>

	<div class="navbar navbar-fixed-top">

		<div class="navbar-inner">

			<div class="container">

				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>

				<a class="brand" href="index.html">
					Helpdesk Service
				</a>
			</div> <!-- /container -->

		</div> <!-- /navbar-inner -->

	</div> <!-- /navbar -->



	<div class="account-container register">

		<div class="content clearfix">

			<form action="<?= base_url('auth/proses_register') ?>" method="post">

				<h1>Signup for Free Account</h1>

				<div class="login-fields">

					<p>Create your free account:</p>
					<?= $this->session->flashdata('message'); ?>
					<?= validation_errors() ?>
					<div class="field">
						<label for="firstname">Username:</label>
						<input type="text" id="username" name="username" value="" placeholder="Username" class="login" />
					</div> <!-- /field -->



					<div class="field">
						<label for="email">Email Address:</label>
						<input type="text" id="email" name="email" value="<?= set_value('email') ?>" placeholder="Email" class="login" />
					</div> <!-- /field -->

					<div class="field">
						<label for="password">Password:</label>
						<input type="password" id="password" name="password" value="" placeholder="Password" class="login" />
					</div> <!-- /field -->

					<div class="field">
						<label for="confirm_password">Confirm Password:</label>
						<input type="password" id="confirm_password" name="confirm_password" value="" placeholder="Confirm Password" class="login" />
					</div> <!-- /field -->

				</div> <!-- /login-fields -->

				<div class="login-actions">

					<button class="button btn btn-primary btn-large">Register</button>

				</div> <!-- .actions -->

			</form>

		</div> <!-- /content -->

	</div> <!-- /account-container -->


	<!-- Text Under Box -->
	<div class="login-extra">
		Already have an account? <a href="">Login to your account</a>
	</div> <!-- /login-extra -->


	<script src="<?= base_url() ?>assets/back/js/jquery-1.7.2.min.js"></script>
	<script src="<?= base_url() ?>assets/back/js/bootstrap.js"></script>

	<script src="<?= base_url() ?>assets/back/js/signin.js"></script>

</body>

</html>