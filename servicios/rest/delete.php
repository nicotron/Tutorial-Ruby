<?php

// Include confi.php
include 'config.php';

if($_SERVER['REQUEST_METHOD'] == "DELETE"){
	// Get data
	$uid = isset($_SERVER['HTTP_UID']) ? mysqli_real_escape_string($conn, $_SERVER['HTTP_UID']) : "";


	// Insert data into data base
	$sql = "DELETE FROM Personas WHERE id = $uid";
	$qur = mysqli_query($conn, $sql);
	if($qur){
		$json = array("uid" => $uid, "msg" => "Usuario eliminado");
	}else{
		$json = array("uid" => 0, "msg" => "No agrego id!");
	}
}else{
	$json = array("uid" => 0, "msg" => "No se elimino");
}

@mysqli_close($conn);

/* Output header */
header('Content-type: application/json');
echo json_encode($json);

?>