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
$id_receta = $_POST['id_receta'];
$id_paciente = $_POST['id_paciente'];
$id_medicamento = $_POST['id_medicamento'];
$id_cita = $_POST['id_cita'];
$cantidad = $_POST['cantidad'];

// Insertar los datos en la tabla recetas
$sql = "INSERT INTO recetas (id_receta, id_paciente, id_medicamento, id_cita, cantidad)
VALUES ('$id_receta', '$id_paciente', '$id_medicamento', '$id_medicamento', '$cantidad')";

if ($conn->query($sql) === TRUE) {
    echo "Receta registrado exitosamente";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
// Cerrar conexión
$conn->close();
exit;	
?>
