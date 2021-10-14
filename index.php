<?php
// include "connection.php";
$conn = mysqli_connect("localhost", "Bala", "Bala@2703", "Blog");
if (!$conn) {
  echo "The database is not connected";
}
$sql = "SELECT * FROM createBlog";
$query = mysqli_query($conn, $sql);

?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <title>Blogging</title>
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-light" >
    <a class="navbar-brand" href="#">Blogging</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item active">
          <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="signup.php">Become a member</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.php">Post your thoughts</a>
        </li>
      </ul>
      <form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
    </div>
  </nav>
  <div class="card-columns" style="margin-top: 10px;
  margin-left:5px;
  gap:10px">
    <?php foreach ($query as $q) { ?>
      <div class="card">
        <div class="card-body">
          <img src="<?php echo $q['img_path']?>" class="card-img-top" alt="...  ">
          <div class="card-body">
            <h5 class="card-title"> <?php echo $q["title"]; ?></h5>
            <p class="card-text"><?php echo $q['description']; ?></p>
            <a href="view.php?id=<?php echo $q['id'] ?>" style="font-size: 1.2rem; font-weight:900" class="btn btn-primary">Read More</a>
          </div>
        </div>

      </div>
    <?php } ?>

  </div>

</body>

</html>

<style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;1,500&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Lora&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@300&display=swap');

  .card {
    transition: 0.5s;
    border-radius: 10px;
    font-family: poppins, sans-serif;
    justify-content: center;
    align-items: center;
    text-align: center;
  }
  .card:hover {
    box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
  }

  .card-title {
    font-family: lora, serif;
    font-weight: 600;
    font-size: 1.8rem;
  }

  .card-text {
    font-weight: 700;
    justify-content: center;
    align-items: center;
    text-align: center;
    font-family: 'Cormorant Garamond', serif;
  }

  .card-img-top {
    border-radius: 5px 5px 0 0;
  }

  .container {
    padding: 15px 16px;
  }
</style>

