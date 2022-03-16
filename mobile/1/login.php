<?php 
session_start(); 
include "db_conn.php";

if (isset($_POST['username']) && isset($_POST['password'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$uname = validate($_POST['username']);
	$pass = validate($_POST['password']);

	if (empty($uname)) {
		echo "Username is Required";
	}else if(empty($pass)){
        echo "Password is Required"; 
	}else{
		// hashing the password
        $pass = md5($pass);

        
		$sql = "SELECT * FROM customer_user WHERE username='$uname' AND password='$pass'";

		$result = mysqli_query($connect, $sql);

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
            if ($row['username'] === $uname && $row['password'] === $pass) {
            	$_SESSION['username'] = $row['username'];
            	$_SESSION['fullname'] = $row['fullname'];
            	$_SESSION['user_id'] = $row['user_id'];
            	echo "Login Success";
            }else{
				echo "Incorect User name or Password";
			}
		}else{
			echo "Incorect User name or Password";
		}
	}
	
}else{
	echo "All Field are Required";
}