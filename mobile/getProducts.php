<?php

include('db_connect.php');

$stmt = $conn->prepare("SELECT product_name, price, gen_name,qty FROM products");

$stmt ->execute();
$stmt -> bind_result($product_name, $price, $gen_name,$qty);

$products = array();

while($stmt ->fetch()){

    $temp = array();
	
	$temp['product_name'] = $product_name;
	$temp['price'] = $price;
	$temp['gen_name'] = $gen_name;
	$temp['qty'] = $qty;

	array_push($products,$temp);
	}

	echo json_encode($products);

?>