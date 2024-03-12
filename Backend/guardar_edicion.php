<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    include("conexion.php");

    $userId = $_POST["userId"];
    $nombre = $_POST["nombre"];
    $apellido = $_POST["apellido"];
    $compania = $_POST["compania"];
    $sitio_web = $_POST["web"];
    $cumpleanos = $_POST["cumpleanos"];
    $apodo = $_POST["apodo"];

    $sql = "UPDATE users_details SET
            nombre = '$nombre',
            apellido = '$apellido',
            compania = '$compania',
            web = '$sitio_web',
            cumpleanos = '$cumpleanos',
            apodo = '$apodo',
            update_date = NOW()
            WHERE id_users = $userId";

    if (mysqli_query($conn, $sql)) {

        $sql2 = "UPDATE users SET update_date = NOW() WHERE id_users = $userId";
        
        if (mysqli_query($conn, $sql2)) {
            echo "<script>alert('Se realizaron los cambios con éxito'); window.location = 'tablas.php';</script>";
        } else {
            echo "Error al actualizar los datos del usuario en la tabla users: " . mysqli_error($conn);
        }
    } else {
        echo "Error al actualizar los detalles del usuario en la tabla users_details: " . mysqli_error($conn);
    }

    // Cierra la conexión a la base de datos
    mysqli_close($conn);
} else {
    echo "Acceso no autorizado";
}
?>

