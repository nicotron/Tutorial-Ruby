require 'rubygems'
require 'savon'
require 'pp'

bienvenida = "SOAP - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
puts bienvenida


client = Savon.client(wsdl: "http://168.62.189.162/semipresencial/webservice2/clase2.asmx?wsdl")
numa = client.operations  #imprime métodos que acepta el doc soap
pp numa
