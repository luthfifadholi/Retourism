<?php 
if (!isset($_POST['submit'])) {
	header("Location: .");
} else {
	$tanggal = $_POST['tanggal']; 
	$tujuan = $_POST['tujuan'];
	//$budget = $_POST['budget'];
	$tema = $_POST['tema'];
	$new_tema = "";
	for ($i=0; $i < sizeof($tema); $i++) { 
		$new_tema = $new_tema."?tema = ".$tema[$i];
		if($i != sizeof($tema)-1){
			$new_tema = $new_tema."||";
		}
	}

	// if(($_POST['jml_dewasa'] + $_POST['jml_anak']) > 1){
	// 	$jumlah_pengunjung = 2;
	// } else {
	// 	$jumlah_pengunjung = 1;
	// }

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

	include_once('semsol/ARC2.php'); 
	$dbpconfig = array("remote_store_endpoint" => "http://localhost:2020/sparql");

	$store = ARC2::getRemoteStore($dbpconfig); 

	if ($errs = $store->getErrors()) {
		echo "<h1>getRemoteSotre error<h1>" ;
	}

	$query = "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
	PREFIX owl: <http://www.w3.org/2002/07/owl#>
	PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
	PREFIX vocab: <http://localhost:2020/resource/vocab/>
	PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
	PREFIX map: <http://localhost:2020/resource/#>
	PREFIX db: <http://localhost:2020/resource/>
	SELECT DISTINCT ?nama ?lokasi ?htm ?deskripsi ?gambar WHERE {
	  ?x1 vocab:memiliki_cuaca_id_cuaca $cuaca;
	      vocab:memiliki_cuaca_id_destinasi ?y1.
	  ?x2 vocab:memiliki_tujuan_id_tujuan $tujuan;
	      vocab:memiliki_tujuan_id_destinasi ?y2.
	  ?x3 vocab:memiliki_tema_id_tema ?tema. FILTER ($new_tema)
	  ?x3 vocab:memiliki_tema_id_destinasi ?y3.
	  ?destinasi vocab:destinasi_id ?faktor. FILTER (?faktor = ?y1 && ?faktor = ?y2 || ?faktor = ?y3)
	  ?destinasi vocab:destinasi_nama ?nama;
	     vocab:destinasi_deskripsi ?deskripsi;
	     vocab:destinasi_htm ?htm;
	     vocab:destinasi_lokasi ?lokasi;
	     vocab:destinasi_gambar ?gambar;
	}";

	$rows = $store->query($query, 'rows');

	if ($errs = $store->getErrors()) {
		echo "Query errors" ;
		print_r($errs);
	}
}
?>