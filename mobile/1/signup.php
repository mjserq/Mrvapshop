<?php 
session_start(); 
include "db_conn.php";

if (isset($_POST['username']) && isset($_POST['password'])
    && isset($_POST['fullname']) && isset($_POST['address'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$uname = validate($_POST['username']);
	$pass = validate($_POST['password']);

	$address = validate($_POST['address']);
	$name = validate($_POST['fullname']);

		// hashing the password
        $pass = md5($pass);

	    $sql = "SELECT * FROM customer_user WHERE username='$uname' ";
		$result = mysqli_query($connect, $sql);

		if (mysqli_num_rows($result) > 0) {
			echo "The username is taken try another Username";
		}else {
           $sql2 = "INSERT INTO customer_user (fullname, username, password, address ) VALUES('$name', '$uname', '$pass', '$address')";
           $result2 = mysqli_query($connect, $sql2);
           if ($result2) {
           	 echo "Register Success";
           }else {
	           	echo "Mali";
           }
		}
	
	
}else{
	echo "All Fields are REQUIRED";
}