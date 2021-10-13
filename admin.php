
<?php
    include "connection.php";
    include "editlogic.php";

    $sql = "SELECT * FORM registration WHERE id='$id'";

    $query = mysqli_query($conn , $sql);

    $data = mysqli_fetch_array($query);


    if(isset($_REQUEST['id']))
    {
        $id = $_REQUEST['id'];

        $sql =  "SELECT * FROM registration WHERE id = $id";
        $query  = mysqli_query($conn , $sql);

    }
    ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">

    <title>Blogging</title>
</head>

<body>


    <div method="GET" class="jumbotron jumbotron-fluid">
        <div class="container" >
            <h1  class="display-3">HI,<?php 
            
            foreach($query as $q){
            echo $q['name']?></h1>
            <p class="lead">Lorem, ipsum.</p>
            <hr class="my-2">
                <a class="btn btn-primary btn-lg" href="listofusers.php" role="button">List of users</a>
                <a class="btn btn-primary btn-lg" role="button" href="#" onclick="blog()"> <i class="fas fa-edit"></i> Create Blog</a>
           <?php }?>
        </div>
    </div>

    <div style="display:none" id="blog" class="container mt-5">
        <form method="GET" action="createblog.php">
            <input type="text" name="title" placeholder="Title of the Blog" class="form-control bg-dark text-white my-3 text-center" >
            <textarea name="description" placeholder="Desription" class="form-control bg-dark text-white my-3"maxlength="100" ></textarea>
            <textarea name="content" placeholder="Content of the Blog" class="form-control bg-dark text-white my-3" > </textarea>
            <button name="newpost" class="btn btn-dark">Add Post</button>
        </form>
    </div>


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

<script>
    function blog()
    {
        var blog = document.getElementById('blog')
        if(blog.style.display == 'none')
        {
            blog.style.display = 'block'
        }
    }
</script>