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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Blogging</title>
</head>
<body>
 

<div class="jumbotron jumbotron-fluid">
    <div class="container">
        <h1 class="display-3">Hi, 
            
        <?php foreach ($query as $q){
        echo $q['name']?></h1>
        <p class="lead">Signed in as: </p>
        <hr class="my-2">

        <p class="lead">
            <a class="btn btn-primary btn-lg" onclick="toggleblog()" href="#" role="button">Create Blog</a>
        </p>
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



    <div class="container mt-5">
        <?php if (isset($_REQUEST['info'])) { ?>
            <?php if ($_REQUEST['info'] == "added") { ?>
                <div class="alert alert-success" role="alert">
                    Post has been added successfully
                </div>
            <?php }else if($_REQUEST['info'] == "updated") {?>
                <div class="alert alert-success" role="alert">
                    Post has been Updated successfully
                </div>
            <?php }else if($_REQUEST['info'] == "deleted") {?>
                <div class="alert alert-danger" role="alert">
                    Post has been Deleted successfully
                </div>
            <?php }?>
        <?php } ?>
    </div>


</body>
</html>


<style>
    .jumbotron{
        background-color: #C8EAEA;
    }
		html, body{background: #ececec; height: 100%; margin: 0; font-family: Arial;}
		.main{height: 100%; display: flex; justify-content: center;}
		.main .image-box{width:300px; margin-top: 30px;}
		.main h2{text-align: center; color: #4D4D4D;}
		.main .tb{width: 100%; height: 40px; margin-bottom: 5px; padding-left: 5px;}
		.main .file_input{margin-top: 10px; margin-bottom: 10px;}
		.main .btn{width: 100%; height: 40px; border: none; border-radius: 3px; background: #27a465; color: #f7f7f7;}
		.main .msg{color: red; text-align: center;}




</style>

<script>
    function toggleblog()
    {
        var blog = document.getElementById('blog');
      
        if(blog.style.display == 'none'){
            blog.style.display = 'block'; 
        }
    }
</script>