<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
	<title>Retourism</title>

	<!-- CSS  -->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link href="assets/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
	<link href="assets/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>

	<!--  Scripts-->
	<script type="text/javascript" src="assets/js/jquery-3.2.1.js"></script>
	<script type="text/javascript" src="assets/js/materialize.js"></script>
	<script type="text/javascript" src="assets/js/init.js"></script>
</head>

<script type="text/javascript">
	$(document).ready(function(){
	    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
	    $('.modal').modal();

	    $('.datepicker').pickadate({
	    	formatSubmit: 'yyyy-mm-dd',
	    	hiddenName: true,
				selectMonths: true, // Creates a dropdown to control month
				selectYears: 2 // Creates a dropdown of 15 years to control year
			});

	    $('select').material_select();

	    $("a.trans").on('click', function(event) {
	    	if (this.hash !== "") {
	    		event.preventDefault();
	    		var hash = this.hash;
	    		$('html, body').animate({
	    			scrollTop: $(hash).offset().top
	    		}, 800, function(){
	    			window.location.hash = hash;
	    		});
	    	}
	    });
	});
</script>
<body>
	<nav class="amber darken-4" role="navigation">
		<div class="nav-wrapper container">
			<a style="color: white" id="logo-container" href="#" class="brand-logo">Retourism</a>
			<ul class="right hide-on-med-and-down">
				<li class="active"><a class="white-text" href="#">Home</a></li>
				<li><a class="trans white-text" href="#aboutus">About Us</a></li>
				<!-- <li><a class="modal-trigger white-text" href="#modallogin">Login</a></li> -->
			</ul>

			<ul id="nav-mobile" class="side-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a class="trans" href="#aboutus">About Us</a></li>
				<!-- <li><a class="modal-trigger" href="#modallogin">Login</a></li> -->
			</ul>
			<a style="color: white" href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
		</div>
	</nav>

	<div id="index-banner" class="parallax-container">
		<div class="section no-pad-bot">
			<div class="container">
				<div class="row center">
					<div style="margin-bottom: 100px"></div>
					<h3 class="header col s12">Discover Your Journey Here</h3>
				</div>
				<div class="row center">
					<a href="#getstarted" class="trans btn-large waves-effect waves-light amber darken-4">Get Started</a>
				</div>
				<br><br>
			</div>
		</div>
		<div class="parallax"><img src="assets/img/merapi.jpg" alt="Unsplashed background img 1"></div>
	</div>

	<div class="container">
		<div class="section">
			<h3 id="getstarted" class="center">Pencarian Lokasi Wisata</h3>
			<!--   Icon Section   -->
			<div class="row">
				<form class="col s12" method="POST" action="result.php">
					<div class="row">
						<div class="input-field col s12">
							<input name="tanggal" type="date" placeholder="Tanggal" class="datepicker" required="">
						</div>
					</div>
					<!-- form tujuan -->
					<!-- <div class="row">
						<div class="input-field col s12">
							<select name="tujuan" required="">
								<option value="" disabled selected>Pilih Tujuan</option>
								<option value="1">Belajar</option>
								<option value="2">Belanja</option>
								<option value="3">Bisnis</option>
								<option value="4">Ibadah</option>
								<option value="5">Kuliner</option>
								<option value="6">Liburan</option>
								<option value="7">Olahraga</option>
							</select>
							<label>Tujuan Wisata</label>
						</div>
					</div> -->
					<div class="row">
						<div class="input-field col s12">
							<select multiple name="tema[]" required="">
								<option value="" disabled selected>Pilih Tema</option>
								<option value="1">Alam</option>
								<option value="2">Arsitektur</option>
								<option value="3">Casual</option>
								<option value="4">Edukasi</option>
								<option value="5">Modern</option>
								<option value="6">Pertanian</option>
								<option value="7">Petualangan</option>
								<option value="8">Religi</option>
								<option value="9">Romantis</option>
								<option value="10">Sporty</option>
								<option value="11">Tradisional</option>
							</select>
							<label>Tema Wisata</label>
						</div>
					</div>
					<!-- form usia -->
					<!-- <div class="row">
						<div class="input-field col s6">
							<input placeholder="Jumlah Dewasa" type="number" name="jml_dewasa" min="1" max="10" class="validate" required>
							<label for="jml_dewasa">Dewasa</label>
						</div>
						<div class="input-field col s6">
							<input placeholder="Jumlah Anak" type="number" name="jml_anak" min="0" max="10" class="validate">
							<label for="jml_anak">Anak</label>
						</div>
					</div> -->
					<!-- form budget individu -->
					<!-- <div class="row">
						<div class="input-field col s12">
							<input name="budget" id="budget" type="number" class="validate" min="0">
							<label for="budget">Budget Per Individu</label>
						</div>
					</div> -->

					<button class="btn btn-large waves-effect waves-light red accent-4" type="reset" name="reset">Reset
						<i class="material-icons right">loop</i>
					</button>
					<button class="btn btn-large waves-effect waves-light amber darken-4" type="submit" name="submit">Submit
						<i class="material-icons right">send</i>
					</button>
				</form>
			</div>
		</div>
	</div>

	<div class="parallax-container valign-wrapper">
		<div class="section no-pad-bot">
			<div class="container">
				<div class="row center">
					<h2 class="header col s12">This is Our Project</h2>
				</div>
			</div>
		</div>
		<div class="parallax"><img src="assets/img/tugu-a.jpg" alt="Unsplashed background img 3"></div>
	</div>

	<?php include 'assets/footer.php'; ?>

</body>
</html>


<!-- Modal Structure -->
<!-- <div id="modallogin" class="modal">
	<form method="POST" action="process/login.php">
		<br>
		<h5 class="center">Login</h5>
		<div class="modal-content">
			<div class="row">
				<div class="input-field col s12">
					<i class="material-icons prefix">account_circle</i>
					<input name="username" type="text" required>
					<label for="username">Username</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s12">
					<i class="material-icons prefix">lock</i>
					<input name="password" type="password" required>
					<label for="password">Password</label>
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<input value="Submit" type="submit" class="modal-action waves-effect waves-orange btn-flat" />
			<input value="Cancel" type="reset" class="modal-action modal-close waves-effect waves-red btn-flat " />
		</div>	
	</form>
</div> -->