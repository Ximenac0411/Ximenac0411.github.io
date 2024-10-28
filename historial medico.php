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
$id_historial = $_POST['id_historial'];
$id_paciente = $_POST['id_paciente'];
$fecha = $_POST['fecha'];
$descripcion = $_POST['descripcion'];

// Insertar los datos en la tabla historial_medico
$sql = "INSERT INTO historial_medico (id_historial, id_paciente, fecha, descripcion)
VALUES ('$id_historial', '$id_paciente', '$fecha', '$descripcion')";

if ($conn->query($sql) === TRUE) {
    echo "Historial médico registrado exitosamente";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Cerrar conexión
$conn->close();
?>
