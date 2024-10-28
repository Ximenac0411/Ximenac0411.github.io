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
$id_empleado = $_POST['id_empleado'];
$nombre = $_POST['nombre'];
$puesto = $_POST['puesto'];
$fecha = $_POST['fecha'];
$telefono = $_POST['telefono'];

// Insertar los datos en la tabla empleado
$sql = "INSERT INTO empleados (id_empleado, nombre, puesto, fecha_contratacion, telefono)
VALUES ('$id_empleado', '$nombre', '$puesto', '$fecha', '$telefono')";

if ($conn->query($sql) === TRUE) {
    echo "Empleado registrado exitosamente";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
// Cerrar conexión
$conn->close();
exit;	
?>
