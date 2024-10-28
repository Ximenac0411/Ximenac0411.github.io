<?php
include("../componentes/conexionBD.php");

$username = $_POST['username'];
$contraseña = $_POST['contraseña'];

$stmt = $conexion->prepare("SELECT contraseña FROM admin WHERE username = ?");
$stmt->bind_param("s", $username);
$stmt->execute();
$stmt->store_result();


if ($stmt->num_rows > 0) {
  
    $stmt->bind_result($contraseña_bd);
    $stmt->fetch();

    if ($contraseña === $contraseña_bd) {

        $_SESSION['loggedin'] = true;
        $_SESSION['username'] = $username;

       
        header("Location: ../www/chat/Principal.html");
        exit;
    } else {
        
        header("Location: ../www/chat/Principal.html?error=1");
        exit;
    }
} else {
   
    header("Location: ../www/chat/Principal.html?error=1");
    exit;
}


$stmt->close();
$conexion->close();
?>
