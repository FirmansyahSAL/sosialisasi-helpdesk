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



	<div class="account-container">

		<div class="content clearfix">
			<h1>Member Login</h1>

			<form action="<?= base_url('auth/proses_login') ?>" method="post">

				<p>Sign in to start your session</p>

				<?= $this->session->flashdata('message') ?>
				<?= validation_errors() ?>
				<div class="login-fields">

					<div class="control-group">

						<div class="field">
							<label for="email">Email</label>
							<input type="text" id="email" name="email" placeholder="Email" class="login username-field" />
						</div> <!-- /field -->

						<div class="field">
							<label for="password">Password:</label>
							<input type="password" id="password" name="password" placeholder="Password" class="login password-field" />
						</div> <!-- /password -->
					</div>

				</div> <!-- /login-fields -->

				<div class="login-actions">
					<p>&nbsp;</p>
					<button class="btn btn-success btn-large">Sign In</button>
				</div> <!-- .actions -->
			</form>
		</div> <!-- /content -->
	</div> <!-- /account-container -->
	</div> <!-- /login-extra -->

	<script src="<?= base_url() ?>assets/back/js/jquery-1.7.2.min.js"></script>
	<script src="<?= base_url() ?>assets/back/js/bootstrap.js"></script>
	<script src="<?= base_url() ?>assets/back/js/signin.js"></script>

</body>

</html>