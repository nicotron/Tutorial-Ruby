require 'mysql2' # Debes instalar la gema mysql2, acá la llamas

bienvenida = "MYSQL2 - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
  puts bienvenida

espacio = " \n"
  puts espacio
  client = Mysql2::Client.new(:host => "127.0.0.1", :username => "root", :database => 'prueba')
  results = client.query("SELECT * FROM registros")

  results.each do |row|

  puts row["id"]
  puts row["nom"]
  puts row["fecha"]
  puts row["hora"]
end

=begin
BASE DE DATOS

-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 31-01-2017 a las 05:05:15
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE IF NOT EXISTS `registros` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `nom`, `fecha`, `hora`) VALUES
(1, 'JOSE', '2017-01-22', '08:00:00'),
(2, 'VALERIA', '2017-04-15', '13:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

=end
