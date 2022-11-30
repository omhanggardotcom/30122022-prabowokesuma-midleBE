<?php
//add dbconnect

include('dbconnect.php');

$judul = $_POST['judul_bk'];
$category = $_POST['catm_bk'];
$keywordsbk = $_POST['keyword_bk'];
$harga = $_POST['harga_bk'];
$stock = $_POST['stock_bk'];
$penerbit = $_POST['terbit_bk'];

//query

$query =  "INSERT INTO buku(judul_buku , category_buku, keyword_buku, harga_buku, stock, penerbit_buku ) VALUES('$judul','$category','$keywordsbk','$harga','$stock','$penerbit')";

if (mysqli_query($conn , $query)) {
	# code redicet setelah insert ke index
	header("location:index.php");
}
else{
	echo "ERROR, tidak berhasil". mysqli_error($conn);
}

mysqli_close($conn);
?>