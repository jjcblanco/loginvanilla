<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../DisWeb/tablas.css">
    <title>Lista de Usuarios</title>    
</head>
<body>
    <h1>Lista de Usuarios</h1>
    <table border ="1">
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <?php
            include("conexion.php");

            $sql = "SELECT nombre, apellido, id_users FROM users_details WHERE delete_date IS NULL";
            $result = mysqli_query($conn, $sql);

            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo "<td>" . $row["nombre"] . "</td>";
                    echo "<td>" . $row["apellido"] . "</td>";
                    echo "<td>";
                    echo "<button class='btn' onclick='confirmDelete(" . $row["id_users"] . ")'>Eliminar</button>";
                    echo "<button class='btn' onclick='showDetails(" . $row["id_users"] .")'>Detalles</button>";
                    echo "<button class='btn' onclick='showEditForm(" . $row["id_users"] . ")'>Modificar</button>";
                    echo "</td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='3'>No hay usuarios</td></tr>";
            }

            mysqli_close($conn);
            ?>
        </tbody>
    </table>

    <script>
        function confirmDelete(userId) {
            var confirmDelete = confirm("¿Estás seguro de que deseas eliminar a este usuario?");

            if (confirmDelete) {
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "eliminar_usuario.php", true);
                xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        location.reload();
                    }
                };
                xhr.send("userId=" + userId);
            }
        }
        function showEditForm(userId) {

    window.location = "editar_usuario.php?userId=" + userId;
}

function showDetails(userId) {
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "suizacomputacion", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            var userDetails = JSON.parse(xhr.responseText);

            var detailsString = "Nombre: " + userDetails.nombre + "\n" +
                "Apellido: " + userDetails.apellido + "\n" +
                "Compañia: " + userDetails.compania + "\n" + 
                "Web: " + userDetails.web + "\n" +  
                "Cumpleaños: " + userDetails.cumpleanos + "\n" +
                "Apodo: " + userDetails.apodo + "\n" +
                "Correo: " + userDetails.correo;

            alert(detailsString);
        }
    };
    xhr.send("userId=" + userId);
}
    </script>
</body>
</html>

