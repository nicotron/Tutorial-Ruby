<?php

// Include confi.php
include 'config.php';

if($_SERVER['REQUEST_METHOD'] == "POST"){
	// Get data
	$nombre = isset($_POST['nombre']) ? mysqli_real_escape_string($conn, $_POST['nombre']) : "";
	$apellido = isset($_POST['apellido']) ? mysqli_real_escape_string($conn, $_POST['apellido']) : "";
	$rut = isset($_POST['rut']) ? mysqli_real_escape_string($conn, $_POST['rut']) : "";
	$usua = isset($_POST['usua']) ? mysqli_real_escape_string($conn, $_POST['usua']) : "";
	$pass = isset($_POST['pass']) ? mysqli_real_escape_string($conn, $_POST['pass']) : "";

	// Insert data into data base
	$sql = "INSERT INTO `usuarios`.`Personas` (`id`, `nombre`, `apellido`, `rut`, `usua` , `pass`) VALUES (NULL, '$nombre', '$apellido', '$rut', '$usua', '$pass');";
	$qur = mysqli_query($conn, $sql);
	if($qur){
		$json = array("nombre" => $nombre, "msg" => "Usuario anadido!");
	}else{
		$json = array("usua" => 0, "msg" => "Error adding user!");
	}
}else{
	$json = array("usua" => 0, "msg" => "Request method not accepted");
}

@mysqli_close($conn);

/* Output header */
header('Content-type: application/json');
echo json_encode($json);

?>