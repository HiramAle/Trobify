<?php
$nombre = $_POST['nombre'];
$mail = $_POST['mail'];
$phone = $_POST['phone'];
$sugerencias = $_POST['sugerencias'];

$header = 'From: ' . $mail . " \r\n";
$header .= "X-Mailer: PHP/" . phpversion() . " \r\n";
$header .= "Mime-Version: 1.0 \r\n";
$header .= "Content-Type: text/plain";

$sugerencias = "Esta sugerencia fue enviada por: " . $nombre . " \r\n";
$sugerencias .= "Su e-mail es: " . $mail . " \r\n";
$sugerencias .= "Teléfono de contacto: " . $phone . " \r\n";
$sugerencias .= "Sugerencia: " . $_POST['sugerencias'] . " \r\n";
$sugerencias .= "Enviado el: " . date('d/m/Y', time());

$para = 'trobifyroomies@gmail.com';
$asunto = 'Sugerencia Trobify';

mail($para, $asunto, utf8_decode($sugerencias), $header);

header("Location:index.html");
?>