<?php
session_start();
require_once 'config/database.php';
require_once 'includes/header.php';

if (isset($_SESSION['logged_in'])) {
    header("Location:index.php");
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // JOIN ke tabel user_role untuk dapatkan nama rolenya
    $stmt = $pdo->prepare("
        SELECT u.*, r.nama_role 
        FROM user u
        JOIN user_role r ON u.roleID = r.roleID
        WHERE u.username = ?
    ");
    $stmt->execute([$username]);
    $user = $stmt->fetch();

    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['logged_in'] = true;
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['username'] = $user['username'];
        $_SESSION['role'] = $user['nama_role']; // Ambil dari tabel user_role

        // Arahkan berdasarkan role
        if ($user['nama_role'] == 'admin') {
            header("Location: index.php");
        } elseif ($user['nama_role'] == 'kasir') {
            header("Location: index.php");
        } 
        exit;
    } else {
        $error = "Username atau password salah!";
    }
}
?>



<!doctype html>
<html lang="en">
  <head>
  	<title>Saung Liwet Bakar</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="form_login/css/style.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img" style="background-image: url(assets/img/Login_SLB.png);">
			      </div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h3 class="mb-4">Login Saung Liwet Bakar</h3>
			      		</div>
								
			      	</div>
					  <?php if(isset($error)): ?>
                    <div class="alert alert-danger"><?php echo $error; ?></div>
                     <?php endif; ?>

							<form action="#" class="signin-form"  method="post">
			      		<div class="form-group mb-3">
			      			<label class="label" for="name">username</label>
			      			<input type="text" class="form-control" placeholder="username" name="username" required >
			      		</div>
		            <div class="form-group mb-3">
		            	<label class="label" for="password">password</label>
		              <input type="password" class="form-control" placeholder="password" name="password" required>
		            </div>
		            <div class="col-12"  >
		            	<button type="submit" class="btn btn-block text-white" >Login</button>
		            </div>
		            <div class="form-group d-md-flex">
     <style>
      .col-12{
    background-color: rgb(56, 38, 23) !important;
     }
     </style>


		          </form>
		       
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

<script src="assets/plugins/jquery/jquery.min.js"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/dist/js/adminlte.min.js"></script>

	</body>
</html>

