<?php include('config/constants.php'); ?>
<link rel="stylesheet" href="LoginForm/style.css">
<div class="center">

    <h1>Register</h1>

    <br><br>

    <?php
    if (isset($_SESSION['add'])) //Checking whether the SEssion is Set of Not
    {
        echo $_SESSION['add']; //Display the SEssion Message if SEt
        unset($_SESSION['add']); //Remove Session Message
    }
    ?>

    <form action="" method="POST" class="txt_field">
        <div class="txt_field">
            Name <br>
            <input type="text" name="username" placeholder="Enter Your Name">
        </div>
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


</div>



<?php
//Process the Value from Form and Save it in Database

//Check whether the submit button is clicked or not

if (isset($_POST['submit'])) {
    // Button Clicked
    //echo "Button Clicked";

    //1. Get the Data from form
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = md5($_POST['password']); //Password Encryption with MD5

    //2. SQL Query to Save the data into database
    $sql = "INSERT INTO tbl_customer SET 
            username='$username',
            email='$email',
            password='$password'
        ";

    //3. Executing Query and Saving Data into Datbase
    $res = mysqli_query($conn, $sql) or die(mysqli_error());

    //4. Check whether the (Query is Executed) data is inserted or not and display appropriate message
    if ($res == TRUE) {
        //Data Inserted
        //echo "Data Inserted";
        //Create a Session Variable to Display Message
        $_SESSION['add'] = "<div class='success'>Register Successfully.</div>";
        //Redirect Page to Manage Admin
        header("location:" . SITEURL . 'login.php');
    } else {
        //FAiled to Insert DAta
        //echo "Faile to Insert Data";
        //Create a Session Variable to Display Message
        $_SESSION['add'] = "<div class='error'>Failed to Register.</div>";
        //Redirect Page to Add Admin
        header("location:" . SITEURL . 'register.php');
    }
}

?>