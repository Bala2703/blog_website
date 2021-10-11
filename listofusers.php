<?php
include "connection.php";
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <title>Blogging</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-space-between">
    <a href="#" class="navbar-brand">Blogging</a>
    <ul class="nav nav-pills ">
  <li class="nav-item">
    <a class="nav-link active" href="#">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="admin.php">Admin</a>
  </li>
</ul>

</nav>

<?php

$sql = "SELECT * FROM registration";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) { ?>
    <table>
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Email</td>
            <td>Role</td>
            <td>Edit role</td>
        </tr>
        <?php
        while ($row = mysqli_fetch_array($result)) { ?>
            <tr>
                <td><?php echo $row['id'] ?></td>
                <td><?php echo $row['name'] ?></td>
                <td><?php echo $row['email'] ?></td>
                <td><?php echo $row['admin']?></td>
                <td><a href="edit.php?id=<?php echo $row['id']; ?>" >edit</a></td>
            </tr>

        <?php
        } ?>
    </table>
<?php } else {
    echo " No result found";
} ?>
</body>
</html>


<style>
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    td,
    th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;

    }

    tr:nth-child(even) {
        background-color: white;
    }
</style>