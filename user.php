<?php
    include "logout.php";
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
    <title>Document</title>
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
            <textarea name="content" placeholder="Content of the Blog" class="form-control bg-dark text-white my-3"> </textarea>
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
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}



.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #04AA6D;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}




.sidebar {
	background-color: #333;
	position: fixed;
	transition: width 0.2s ease;
}

.sidebar nav {
	height: 100%;
}

.sidebar .sidebar__nav {
	display: flex;
	height: 100%;
	list-style: none;
	margin: 0;
	padding: 0;
}

.sidebar .sidebar__nav .sidebar__nav__link {
	align-items: center;
	color: #bbb;
	display: flex;
	padding-left: 20px;
	text-decoration: none;
	transition: color 0.2s ease, background-color 0.2s ease;
}

.sidebar .sidebar__nav .sidebar__nav__link:hover {
	background-color: #fff;
	color: #80f;
}

.sidebar .sidebar__nav .sidebar__nav__text {
	display: none;
	margin-left: 10px;
	margin-right: auto;
	white-space: nowrap;
}

.sidebar .sidebar__nav i {
	align-items: center;
	display: flex;
	justify-content: center;
}

@media (max-width: 572px) {
	.sidebar {
		bottom: 0;
		width: 100%;
	}

	.sidebar .sidebar__nav {
		justify-content: center;
	}

	.sidebar .sidebar__nav .sidebar__nav__link {
		height: 100%;
		padding: 0.75em;
	}

	.sidebar .sidebar__nav i {
		font-size: 2rem;
	}
}

@media (min-width: 572px) {
	.sidebar {
		height: 100vh;
		left: 0;
		width: var(--sidebar-width);
	}

	.sidebar:hover {
		width: 14rem;
	}

	.sidebar .sidebar__nav {
		flex-direction: column;
	}

	.sidebar .sidebar__nav li:last-child {
		margin-top: auto;
	}

	.sidebar .sidebar__nav .sidebar__nav__link {
		padding: 1em;
	}

	.sidebar:hover .sidebar__nav .sidebar__nav__text {
		display: inline;
	}

	.sidebar .sidebar__nav i {
		font-size: 2.5rem;
	}
}

@media (max-height: 434px) {
	.sidebar {
		overflow-y: scroll;
	}
}

</style>

<script>
    function toggleblog()
    {
        var blog = document.getElementById('blog');
      
        if(blog.style.display == 'none'){
            blog.style.display = 'block'; 
        }
    }



// function profile()
// {
//     var profile = document.getElementById('profile');
//     var blog = document.getElementById('blog')
//     if(profile.style.display == 'none'){
//         profile.style.display = 'block'
//         if(blog.style.display == 'block'){
//             blog.style.display = 'none'
//         }
//     }
// }
</script>