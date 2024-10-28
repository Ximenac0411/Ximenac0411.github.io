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
$numero = $_POST['numero'];
$estado = $_POST['estado'];

// Insertar los datos en la tabla quirofano
$sql = "INSERT INTO quirofanos (num_quirofano, estado)
VALUES ('$numero', '$estado')";

if ($conn->query($sql) === TRUE) {
    echo "Quirófano registrado exitosamente";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Cerrar conexión
$conn->close();
?>
