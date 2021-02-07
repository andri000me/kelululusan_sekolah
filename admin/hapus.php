<?php

session_start();
if(isset($_SESSION['logged']) && !empty($_SESSION['logged'])){
	include "../database.php";

}

$id = $_GET["id"];

if (hapus($id) > 0 ) {

	echo "
			<script>
				alert('data berhasil dihapuskan');
				document.location.href = 'data.php';
			</script>
		";
}
else {
	echo "
		<script>
				alert('data gagal dihapus');
				document.location.href = 'data.php';
			</script>
		";
}

 ?>