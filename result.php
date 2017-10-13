<?php include 'process/searching.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
	<title>Result</title>

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
			<a style="color: white" id="logo-container" href="." class="brand-logo">Retourism</a>
			<ul class="right hide-on-med-and-down">
				<li><a class="white-text" href=".">Home</a></li>
				<li><a class="trans white-text" href="#aboutus">About Us</a></li>
				<!-- <li><a class="modal-trigger white-text" href="#modallogin">Login</a></li> -->
			</ul>

			<ul id="nav-mobile" class="side-nav">
				<li><a href=".">Home</a></li>
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
					<a href="./#getstarted" class="btn-large waves-effect waves-light amber darken-4">Get Started</a>
				</div>
				<br><br>
			</div>
		</div>
		<div class="parallax"><img src="assets/img/merapi.jpg" alt="Unsplashed background img 1"></div>
	</div>

	<div class="container">
		<div class="section">
			<h3 class="center">Rekomendasi</h3>
			<div class="row">
				<?php $i=1; foreach ($result as $row) { ?>
				<div class="card">
					<div class="col s12 m6">
						<div class="card-image waves-effect waves-block waves-light" style="max-height: 200px">
							<img class="activator" src="<?php echo $row['gambar']; ?>">
						</div>
						<div class="card-content orange accent-4" style="color: white"><b><?php echo $row['nama']; ?></b>
							<a style="color: white" href="#modal<?php echo $i; ?>"><i class="material-icons right">more_vert</i></a>
						</div>
					</div>
				</div>
				<?php $i++; } ?>
				
				<!-- <div class="col s12 m12"><br></div> -->
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
		<div class="parallax"><img src="assets/img/pantai-timang.jpg" alt="Unsplashed background img 3"></div>
	</div>

	<?php include 'assets/footer.php'; ?>
	
</body>
</html>

<!-- Modal Structure -->
<?php $i = 1; foreach ($result as $row) { ?>
<div id="modal<?php echo $i; ?>" class="modal modal bottom-sheet">
	<div class="modal-content">
		<h4><?php echo $row['nama']; ?></h4>
		<ul class="collection">
			<li class="collection-item avatar">
				<img src="<?php echo $row['gambar']; ?>" alt="" class="circle">
				<span class="title">Nama Lokasi</span>
				<p><?php echo $row['nama']; ?></p>
			</li>
			<li class="collection-item avatar">
				<i class="material-icons circle amber darken-4">location_on</i>
				<span class="title">Lokasi</span><br>
				<?php echo $row['lokasi']; ?>
			</li>
			<li class="collection-item avatar">
				<i class="material-icons circle amber darken-4">local_play</i>
				<span class="title">Harga Tiket Masuk</span>
				<p><?php echo $row['htm']; ?></p>
			</li>
			<li class="collection-item avatar">
				<i class="material-icons circle amber darken-4">description</i>
				<span class="title">Detail</span>
				<p style="text-align: justify;"><?php echo $row['deskripsi']; ?></p>
			</li>
		</ul>
	</div>
	<div class="modal-footer">
		<a class="modal-action modal-close waves-effect waves-green btn-flat">Quit</a>
	</div>
</div>
<?php $i++; } ?>


<!-- Modal Login -->
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