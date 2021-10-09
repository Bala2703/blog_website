<?php 
    include "connection.php";
    include "editlogic.php";
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