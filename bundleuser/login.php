<?php include('config/constants.php'); ?>

<html>

<head>
    <title>Login - item Order System</title>
    <link rel="stylesheet" href="LoginForm/style.css">
</head>

<body>

    <div class="center">
        <h1>Login</h1>


        <?php
        if (isset($_SESSION['login'])) {
            echo $_SESSION['login'];
            unset($_SESSION['login']);
        }

        if (isset($_SESSION['no-login-message'])) {
            echo $_SESSION['no-login-message'];
            unset($_SESSION['no-login-message']);
        }
        ?>
        <br><br>

        <!-- Login Form Starts HEre -->
        <form action="" method="POST" class="txt_field">

            <div class="txt_field">
                Email <br>
                <input type="text" name="email" placeholder="Enter email">
            </div>
            <div class="txt_field">
                Password <br>
                <input type="password" name="password" placeholder="Enter Password">
            </div>
            <input type="submit" name="submit" value="Login" class="signup_link">

        </form>

        <p class="signup_link">Don't have an account? <a href="register.php">Register Here</a></p>
    </div>

</body>

</html>

<?php

//CHeck whether the Submit Button is Clicked or NOt
if (isset($_POST['submit'])) {
    //Process for Login
    //1. Get the Data from Login form
    // $username = $_POST['username'];
    // $password = md5($_POST['password']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);

    $raw_password = md5($_POST['password']);
    $password = mysqli_real_escape_string($conn, $raw_password);

    //2. SQL to check whether the user with username and password exists or not
    $sql = "SELECT * FROM tbl_customer WHERE email='$email' AND password='$password'";

    //3. Execute the Query
    $res = mysqli_query($conn, $sql);

    //4. COunt rows to check whether the user exists or not
    $count = mysqli_num_rows($res);

    if ($count == 1) {
        //User AVailable and Login Success
        $_SESSION['login'] = "<div class='success'>Login Successful.</div>";
        $_SESSION['user'] = $email; //TO check whether the user is logged in or not and logout will unset it

        //REdirect to HOme Page/Dashboard
        header('location:' . SITEURL . 'index.php');
    } else {
        //User not Available and Login FAil
        $_SESSION['login'] = "<div class='error text-center'>Email or Password did not match.</div>";
        //REdirect to HOme Page/Dashboard
        header('location:' . SITEURL . 'login.php');
    }
}

?>