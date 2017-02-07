require 'rubygems'
require 'savon'
require 'pp'

bienvenida = "SOAP - OPERACIONES -\nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
puts bienvenida


client = Savon.client(wsdl: "http://localhost/servicios/soap_servidor.php?wsdl")
numa = client.operations  #imprime métodos que acepta el doc soap
pp numa
