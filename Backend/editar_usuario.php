<!DOCTYPE html>
<html lang="en">
<head>
<form id="RegisterFormulario" action="guardar_edicion.php" method="post">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../DisWeb/tablas.css">
    <title>Editar Usuario</title>
</head>
<body>
    <h1>Editar Usuario</h1>
    <?php
    include("conexion.php");
    $userId = $_GET['userId'];
    $sql = "SELECT * FROM users_details WHERE id_users = $userId";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
    ?>
        <form method="post" action="guardar_edicion.php">
            <input type="hidden" name="userId" value="<?php echo $userId; ?>">
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre" id="nombre" value="<?php echo $row['nombre']; ?>">
            
            <label for="apellido">Apellido:</label>
            <input type="text" name="apellido" id="apellido" value="<?php echo $row['apellido']; ?>">
            
            <label for="compania">Compañia:</label>
            <input type="text" name="compania" id="compania" value="<?php echo $row['compania']; ?>">
            
            <label for="web">Sitio Web:</label>
            <input type="text" name="web" id="web" value="<?php echo $row['web']; ?>">
            
            <label for="cumpleanos">Cumpleaños:</label>
            <input type="date" name="cumpleanos" id="cumpleanos" value="<?php echo $row['cumpleanos']; ?>">
            
            <label for="apodo">Apodo:</label>
            <input type="text" name ="apodo" id="apodo" value="<?php echo $row['apodo']; ?>">
            
            <div class="button-container">
                <input type="submit" value="Guardar Cambios" >

                <input type="button" value="Regresar" onclick="regresar()">
            </div>
        </form>
        <script>
            function regresar() {
                window.location = "tablas.php";
            }
        </script>
    <?php
    } else {
        echo "Usuario no encontrado";
    }

    mysqli_close($conn);
    ?>
</body>
</html>