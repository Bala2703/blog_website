<?php
include "logic.php"
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>My Website</title>
</head>

<body>
    <div class="container mt-5">
        <div class="text-center">
            <a href="index.php" class="btn btn-danger">Back</a>
        </div>
    </div>
    <div class="container mt-5">
        <?php foreach ($query as $q) { ?>
            <form method="GET">
                <input type="text" hidden name="id" value="<?php echo $q['id'];?>">
                <input type="text" name="title" placeholder="Blog Title" class="form-control bg-dark text-white my-3 text-center" value="<?php echo $q['title']?> ">
                <textarea name="description" placeholder="Desription" class="form-control bg-dark text-white my-3"maxlength="100" ><?php echo $q['description']?></textarea>
                <textarea name="content" class="form-control bg-dark text-white my-3"> <?php echo $q['content']?> </textarea>
                <button name="Update" class="btn btn-dark">Update</button>
            </form>
        <?php } ?>

    </div>
</body>
</html>