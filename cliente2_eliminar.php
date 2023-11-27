<?php
include("conexion.php");
include("barra_lateral.php");
$usuarioingresado = $_SESSION['cliente2ingresando'];
$pagina = $_GET['pag'];
$correo = $_GET['correo'];

if ($correo == $usuarioingresado )
{
echo "<script> alert('No puedes eliminar a tu propio usuario.'); window.location='cliente2_tabla.php' </script>";
}
else
{
mysqli_query($conn, "DELETE FROM cliente2 WHERE correo='$correo'");
header("Location:usuarios_tabla.php?pag=$pagina");
}
?>