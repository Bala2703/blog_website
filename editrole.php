<?php
    include "connection.php";

    $sql = "SELECT * FORM registration WHERE id='$id'";

    $query = mysqli_query($conn , $sql);

    $data = mysqli_fetch_array($query);


    if(isset($_REQUEST['id']))
    {
        $id = $_REQUEST['id'];

        $sql =  "SELECT * FROM registration WHERE id = $id";
        $query  = mysqli_query($conn , $sql);

    }

    if(isset($_REQUEST['Update']))
    {
        $admin = $_REQUEST['admin'];
        $id = $_REQUEST['id'];
        $email = $_REQUEST['email'];
        $name = $_REQUEST['name'];
        $sql = "UPDATE registration SET name='$name' ,admin = '$admin'  WHERE id = $id ";
      mysqli_query($conn , $sql);

       
            // mysqli_close($conn);
            header("Location: ./admin.php");
            die;

   

      
      


    }
?>




<h2>Update Data</h2>
<?php foreach ($query as $q) { ?>

<form method="GET">
<input type="text" hidden name="id" value="<?php echo $q['id'];?>">
    <input type="text" name="name" value="<?php echo $q['name']?>">
    <input type="text" name="email" value="<?php echo $q['email']?>">
    <input type="text" name="admin" value="<?php echo $q['admin']?>" placeholder="Type admin makes this user as admin">
    <button name="Update">Update</button>
</form>
<?php } ?>