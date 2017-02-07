require 'rubygems'
require 'savon'
require 'pp'

bienvenida = "SOAP - CONSUME - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
puts bienvenida


client = Savon.client(wsdl: "http://localhost/servicios/soap_servidor.php?wsdl")
numa = client.operations  # => [:authenticate, :find_user]
pp numa

respuesta_uno = client.call(:cliente_get_cliente) do

message type: "Valeria"


end

respuesta_dos = client.call(:cliente_suma) do
message a: 1, b: 4
end


puts respuesta_uno
puts respuesta_dos
=begin
usuario = client.call(:clientes) do
message usuario: 'Cliente'

end

sumar = client.call(:suma) do
message a: 1, b: 4
end
=end
