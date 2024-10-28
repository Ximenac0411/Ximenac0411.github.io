<?php
// Datos de conexión a la base de datos
$servername = "localhost:3306";
$username = "root";
$password = "root";
$dbname = "hospital";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Capturar datos del formulario
$id_habitacion = $_POST['id_habitacion'];
$numero = $_POST['numero'];
$estado = $_POST['estado'];

// Insertar los datos en la tabla habitacion
$sql = "INSERT INTO habitacion (id_habitacion, numero, tipo, estado)
VALUES ('$id_habitacion', '$numero', '$estado')";

if ($conn->query($sql) === TRUE) {
    echo "Habitación registrada exitosamente";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Cerrar conexión
$conn->close();
?>
