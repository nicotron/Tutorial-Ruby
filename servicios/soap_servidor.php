<?php

/* TUTORIAL RUBY 2017
 * IMPLEMENTACIÓN SOAP
 * JOSÉ SANTORCUATO TAPIA
 * santorcuato76@gmail.com
 * CHILE 2017

*/


include('lib/nusoap.php');

class cliente {

    public function getCliente($type) {
        switch ($type) {
            case 'Jose':
                return 'Jose';
                break;
            case 'Valeria':
                return 'Valeria';
                break;
            default:
                break;
        }
    }

    function suma($a, $b){

    $suma = $a + $b;
    return $suma;
}
}

$server = new nusoap_server;
$server->configureWSDL("Servicios Web", "http://www.paginahackeada.org");

$server->register("cliente.getCliente",
    array("type" => "xsd:string"),
    array("return" => "xsd:string"),
    "http://www.bancofalso/servicios",
    "http://www.bancofalso/servicios#getCliente",
    "rpc",
    "encoded",
    "Elige a un amigo");

$server->register("cliente.suma",
    array("type" => "xsd:string"),
    array("return" => "xsd:string"),
    "http://www.bancofalso/servicios",
    "http://www.bancofalso/servicios#suma",
    "rpc",
    "encoded",
    "Suma dos variables");

@$server->service($HTTP_RAW_POST_DATA);

?>
