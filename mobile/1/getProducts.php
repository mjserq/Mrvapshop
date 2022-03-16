<?php

	include ('db_conn.php');

	$stmt = $conn -> prepare("SELECT product_name, gen_name, price FROM products");

	$stmt ->execute();
	$stmt -> bind_result($product_name, $gen_name, $price);

	$products = array();

	while ($stmt -> fetch()) {
			$temp = array();
	
			$temp['product_name'] = $product_name;
			$temp['gen_name'] = $gen_name;
			$temp['price'] = $price;

			array_push($products,$temp);
			}

			echo json_encode($products);

?>