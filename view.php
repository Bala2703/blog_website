<?php
include "logic.php"
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <title>Blog using PHP & MySQL</title>
</head>

<body>

   <div class="container mt-5">

        <?php foreach ($query as $q) 
        {?>
            <div class="bg-dark p-5 rounded-lg text-white text-center" > 
                <h1>
                    <?php echo $q['title']; ?>
                </h1> 
                <h2>
                    <?php echo $q['description']?>
                </h2>
                <div class="d-flex mt-2 justify-content-center align-items-center">
                    <a class="btn btn-light btn-sm"  href="editblog.php?id=<?php echo $q['id']; ?>">Edit</a>

                    <form method="POST">
                        <input type="text" hidden name="id" value="<?php echo $q['id']; ?>">
                        <button class="btn btn-danger btn-sm ml-2" name="Delete"  >Delete</button>
                    </form>

                </div>

            </div>
                <p class="mt-5 border-left border-dark pl-4 " >
                    <?php echo $q['content']; ?>
                </p>
       <?php }?>

   </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</body>

<!-- <script>
    setTimeout(function(){
   window.location.reload(1);
}, 2000);
</script> -->

</html>