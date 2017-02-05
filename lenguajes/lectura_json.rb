require 'rubygems'
require 'json'
require 'pp'

json = File.read('pais.json')
obj = JSON.parse(json)
pp obj
