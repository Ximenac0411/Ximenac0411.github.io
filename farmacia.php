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
$id_medicamento = $_POST['id_medicamento'];
$nombre = $_POST['nombre'];
$cantidad = $_POST['cantidad'];
$fecha = $_POST['fecha'];

// Insertar los datos en la tabla farmacia
$sql = "INSERT INTO farmacia (id_medicamento, nombre, cantidad, fecha_vencimiento)
VALUES ('$id_medicamento', '$nombre', '$cantidad', '$fecha')";

if ($conn->query($sql) === TRUE) {
    echo "Medicamento registrado exitosamente";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Cerrar conexión
$conn->close();
?>
