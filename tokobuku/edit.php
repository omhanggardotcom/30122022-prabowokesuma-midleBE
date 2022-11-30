<?php
//include('dbconnected.php');
include('dbconnect.php');

$id = $_GET['id_bk'];
$judul = $_GET['judul_bk'];
$category = $_GET['catm_bk'];
$keywordsbk = $_GET['keyword_bk'];
$harga = $_GET['harga_bk'];
$stock = $_GET['stock_bk'];
$penerbit = $_GET['terbit_bk'];

//query update
$query = "UPDATE buku SET judul_buku='$judul' , category_buku='$category', keyword_buku='$keywordsbk', harga_buku='$harga', stock='$stock', penerbit_buku='$penerbit'  WHERE id_buku='$id' ";

if (mysqli_query($conn, $query)) {
	# credirect ke page index
	header("location:index.php");
	
}
else{
	echo "ERROR, data gagal diupdate". mysqli_error($conn);
}

mysqli_close($conn);
?>