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
$id = $_POST['id'];
$id_paciente = $_POST['id_paciente'];
$id_quirofano = $_POST['id_quirofano'];
$fecha = $_POST['fecha'];
$descripcion = $_POST['descripcion'];

// Insertar los datos en la tabla quirurgico
$sql = "INSERT INTO procedimientos_quirurgicos (id, id_paciente, num_quirofano, fecha, descripcion)
VALUES ('$id', '$id_paciente', '$id_quirofano', '$fecha', '$descripcion')";

if ($conn->query($sql) === TRUE) {
    echo "Procedimiento quirúrgico registrado exitosamente";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Cerrar conexión
$conn->close();
?>
