<?php
	// Include confi.php
include 'config.php';

	$uid = isset($_GET['uid']) ? mysqli_real_escape_string($conn, $_GET['uid']) :  "";
	if(!empty($uid)){
		$qur = mysqli_query($conn, "select nombre, apellido, rut, usua, pass from `Personas` where id='$uid'");
		$result =array($qur);
		while($r = mysqli_fetch_array($qur)){
			extract($r);
			$result[] = array("nombre" => $nombre, "apellido" => $apellido, "rut" => $rut,"usua" => $usua, 'pass' => $pass); 
		}
		$json = array("get" => $result);
	}else{
		$json = array("id" => 0, "msg" => "User ID not define");
	}
	@mysqli_close($conn);

	/* Output header */
	header('Content-type: application/json');
	echo json_encode($json);
?>
