<?php
session_start();
if(isset($_SESSION['logged']) && !empty($_SESSION['logged'])){
}


require "../database.php";
require '_header.php'; 


$id = $_GET["id"];
//var_dump($id);

//query data siswa berdasarkan pilihan
$pelajar = query("SELECT * FROM un_siswa WHERE id =$id")[0];
//var_dump($pelajar);






//cek apakah tombol submit sudah ditekan atau belum
if ( isset($_POST["submit"]) ) {
	

	

 


   //cek apakah data sudah berhasil atau belum ke database
	if ( ubah($_POST) > 0) {
		echo "
			<script>
				alert('data berhasil diubah');
				document.location.href = 'data.php';
			</script>
		";
	}
	else {
		echo ("Eror description:" . $db_conn -> error);
				//alert('data gagal diubah');
				//document.location.href = 'index.php';
			//</script>
		//";
	}
}
?>

<div class="container">
<h2>Edit Siswa <small></small></h2><hr>


<form class="form-horizontal" method="post">
	<input type="hidden" name="id" value="<?= $pelajar["id"]; ?>">

	<div class="form-group">
		<label for="no_ujian" class="col-sm-2 control-label">Nomor Peserta</label>
		<div class="col-sm-3">
			<input type="text" name="no_ujian" class="form-control" id="no_ujian" placeholder="Nomor Peserta Ujian" required value="<?= $pelajar["no_ujian"]; ?>" autofocus>
		</div>
	</div>
	<div class="form-group">
		<label for="nama" class="col-sm-2 control-label">Nama Siswa</label>
		<div class="col-sm-3">
			<input type="text" name="nama" class="form-control" id="nama" placeholder="Nama Siswa" required value="<?= $pelajar["nama"]; ?>"  autofocus>
		</div>
	</div>
		<div class="form-group">
		<label for="ttl" class="col-sm-2 control-label">Tempat, Tanggal Lahir</label>
		<div class="col-sm-3">
			<input type="text" name="ttl" class="form-control" id="ttl" placeholder="Tempat Tanggal Lahir" required value="<?= $pelajar["ttl"]; ?>" autofocus>
		</div>
	</div>
		<div class="form-group">
		<label for="nisn" class="col-sm-2 control-label">Nisn/Nis</label>
		<div class="col-sm-3">
			<input type="text" name="nisn" class="form-control" id="nisn" placeholder="Nisn/nis" required value="<?= $pelajar["nisn"]; ?>" autofocus>
		</div>
	</div>
		<div class="form-group">
		<label for="komli" class="col-sm-2 control-label">Kelas/Kompetensi Keahlian</label>
		<div class="col-sm-3">
			<input type="text" name="komli" class="form-control" id="komli" placeholder="Kelas/Kompetensi Keahlian" required value="<?= $pelajar["komli"]; ?>" autofocus>
		</div>
	</div>
		<div class="form-group">
		<label for="status" class="col-sm-2 control-label">Status</label>
		<div class="col-sm-3">
			<input type="text" name="status" class="form-control" id="status" placeholder="status" required value="<?= $pelajar["status"]; ?>" autofocus>
		</div>
	</div>
		<div class="form-group">
		<div class="col-sm-offset-2 col-sm-3">
			<button type="submit" name="submit" class="btn btn-primary">Update</button>
			<a href="data.php" class="btn btn-link">Batal</a>
		</div>
	</div>

</form>
</div>

