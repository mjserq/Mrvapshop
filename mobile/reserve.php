<?php 
session_start(); 
include "db_connect.php";

if (isset($_POST['fullname']) && isset($_POST['address'])
    && isset($_POST['contact']) && isset($_POST['prod_name'])
    && isset($_POST['expected_date'])&& isset($_POST['note'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$fullname = validate($_POST['fullname']);
	$address = validate($_POST['address']);
	$contact = validate($_POST['contact']);
	$prod_name = validate($_POST['prod_name']);
	$expected_date = validate($_POST['expected_date']);
	$note = validate($_POST['note']);

      

           $sql2 = "INSERT INTO customer (customer_name, address, contact, prod_name, expected_date,note ) VALUES('$fullname', '$address', '$contact', '$prod_name', '$expected_date', '$note')";
           $result2 = mysqli_query($conn, $sql2);
           if ($result2) {
           	 echo "Reserved Success";
           }else {
	           	echo "Mali";
           }
		
	
	
}else{
	echo "All Fields are REQUIRED";
}