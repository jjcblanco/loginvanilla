<?php
include('conexion.php');

$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$compania = $_POST['compania'];
$web = $_POST['web'];
$cumpleanos = $_POST['cumpleanos'];
$apodo = $_POST['apodo'];
$correo = $_POST['correo']; 
$contrasena = $_POST['contrasena'];

$consulta = "SELECT id_users FROM users WHERE correo = '$correo'";
$resultadoConsulta = $conn->query($consulta);

if ($resultadoConsulta) {
    $nr = $resultadoConsulta->num_rows; 
    if ($nr == 0) {

        $insertarRegistro = "INSERT INTO users (id_users, correo, contrasena, create_date) 
                             VALUES (null, '$correo', '$contrasena', now())";

        if ($conn->query($insertarRegistro) === TRUE) {
            $idUsuario = $conn->insert_id;

            $insertarDetalles = "INSERT INTO users_details (id_details, id_users, nombre, apellido, compania, web, cumpleanos, apodo, create_date) 
                                VALUES (null, $idUsuario, '$nombre', '$apellido', '$compania', '$web', '$cumpleanos', '$apodo', now())";

            if ($conn->query($insertarDetalles) === TRUE) {
                echo "<script>alert('Se registró con éxito'); window.location = '../index2.html';</script>";
            } else {
                echo "Error al insertar detalles: " . $conn->error;
            }
        } else {
            echo "Error al registrar: " . $conn->error;
        }
    } else {
        echo "<script>alert('No puedes registrar este correo: $correo'); window.location = '../index2.html';</script>";
    }
} else {
    echo "Error en la consulta: " . $conn->error;
}

$conn->close();
?>
