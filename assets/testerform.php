<?php 
	$tanggal = $_POST['tanggal']; 
	$tujuan = $_POST['tujuan'];
	$budget = $_POST['budget'];
	$tema = implode(", ", $_POST['tema']);
	if(($_POST['jml_dewasa'] + $_POST['jml_anak']) > 1){
		$jumlah_pengunjung = 2;
	} else {
		$jumlah_pengunjung = 1;
	}

	$date1 = date_create(date('Y-m-d'));
	$date2 = date_create($tanggal);
	$diff = date_diff($date1, $date2);
	$selisih = $diff->format('%a');
	if($date1 <= $date2 && $selisih < 10){
		$url = "http://api.apixu.com/v1/forecast.json?key=dd10ace94a3444e5a32143042172006&q=yogyakarta&days=10";
		$response  = file_get_contents($url);
 		$jsonobj  = json_decode($response);
 		$kode_cuaca = $jsonobj->forecast->forecastday[$selisih]->day->condition->code;
	} else {
		$kode_cuaca = "1000";
	}

	if ($kode_cuaca == "1003" || $kode_cuaca == "1006" || $kode_cuaca == "1009" || $kode_cuaca == "1043" ) {
		$cuaca = "2";
	} else if ($kode_cuaca == "1150" || $kode_cuaca == "1153" || $kode_cuaca == "1183" || $kode_cuaca == "1186" || $kode_cuaca == "1192") {
		$cuaca = "3";
	} else if ($kode_cuaca == "1246" || $kode_cuaca == "1273" || $kode_cuaca == "1276" || $kode_cuaca == "1279" || $kode_cuaca == "1282" ) {
		$cuaca = "4";
	} else {
		$cuaca = "1";
	}

	echo "Cuaca : ".$cuaca."<br>";
	echo "Tujuan : ".$tujuan."<br>";
	echo "Tema : ".$tema."<br>";
	echo "Jumlah Pengunjung : ".$jumlah_pengunjung."<br>";
	echo "Budget : ".$budget."<br>";
 ?>