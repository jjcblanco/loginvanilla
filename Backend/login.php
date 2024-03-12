<?php
include('conexion.php');

$correo = $_POST["correo"];
$contrasena = $_POST["contrasena"];

// Evitar la inyección SQL utilizando una consulta preparada
$query = "SELECT * FROM users WHERE correo = ? AND contrasena = ? AND delete_date IS NULL";
$stmt = $conn->prepare($query);
$stmt->bind_param("ss", $correo, $contrasena);
$stmt->execute();
$stmt->store_result();
$nr = $stmt->num_rows;

if ($nr == 1) {
    echo "<script>alert('Usuario logueado.'); window.location = 'tablas.php';</script>";
} else {
    echo "<script>alert('Contraseña incorrecta'); window.location = '../index.html';</script>";
}

$stmt->close();
$conn->close();
?>
