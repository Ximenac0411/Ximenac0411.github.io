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
$id_paciente = $_POST['id_paciente'];
$nombre = $_POST['nombre'];
$apellido_paterno = $_POST['apellido_paterno'];
$apellido_materno = $_POST['apellido_materno'];
$telefono = $_POST['telefono'];
$fecha = $_POST['fecha'];
$genero = $_POST['genero'];
$direccion = $_POST['direccion'];

// Insertar los datos en la tabla paciente
$sql = "INSERT INTO pacientes (id_paciente, nombre, ap_p, ap_m, telefono, fecha_nacimiento, genero, direccion)
VALUES ('$id_paciente', '$nombre', '$apellido_paterno', '$apellido_materno', '$telefono', '$fecha', '$genero', '$direccion')";

if ($conn->query($sql) === TRUE) {
    echo "Paciente registrado exitosamente";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Cerrar conexión
$conn->close();
?>
