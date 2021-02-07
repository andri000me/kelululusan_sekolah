<?php
session_start();
if(isset($_SESSION['logged']) && !empty($_SESSION['logged'])){
include "../database.php";
include '_header.php';

?>

<?php
$jumlahDataPerHalaman = 25;
$jumlahData = count(query("SELECT * FROM un_siswa") );
$jumlahHalaman = ceil($jumlahData / $jumlahDataPerHalaman);
$halamanAktif = ( isset($_GET["halaman"]) ) ? $_GET["halaman"] : 1;
$awalData  = ( $jumlahDataPerHalaman * $halamanAktif) - $jumlahDataPerHalaman ;






//var_dump($jumlahHalaman);
//if (isset($_GET["halaman"])) {
//$halamanAktif = $_GET["halaman"];
//}  else {
//	$halamanAktif = 1;

//}
//var_dump($halamanAktif);


//$result = mysqli_query($conn, "SELECT * FROM siswa_kelulusan");
//$jumlahData = mysqli_num_rows($result);
//var_dump($jumlahData);





//$student = query ("SELECT * FROM un_siswa LIMIT $awalData, $jumlahDataPerHalaman ");

//tombol pencarian siswa
 ?>


<div class="container">
	<h2>Data Kelulusan Siswa</h2><hr>
	<div class="row col-sm-8">
		<form class="form-horizontal well" method="post" action="data_upload.php" enctype="multipart/form-data">
			<div class="form-group">
				<label for="importCsv" class="col-sm-3 control-label">CSV/Excel File</label>
				<div class="col-sm-9">
					<div class="fileinput fileinput-new input-group" data-provides="fileinput">
						<div class="form-control" data-trigger="fileinput">
							<i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span>
						</div>
						<span class="input-group-addon btn btn-default btn-file">
							<span class="fileinput-new">Choose file</span>
							<span class="fileinput-exists">Ganti</span>
							<input type="file" name="file">
						</span>
						<a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Drop</a>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-3 col-sm-9">
					<button type="submit" name="submit" class="btn btn-default">Upload</button>
				</div>
			</div>
		</form>
	</div>
</div>





<button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#tambah" >Tambah Data</button>
<div class="col-sm-10"> </div>

<div id="tambah" class="modal fade" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"></button>
				<h4 class="modal-title"> Tambah Data Siswa </h4>
			</div>
			 <form method="post" enctype="multipart/form-data">
			 	<div class="modal-body">
			 		<div class="form-group">
			 			<label class="control-label" for="no_ujian"> Nomor Ujian Siswa</label>
			 			<input type="text" name="no_ujian" class="form-control" id="no_ujian" required>
				</div>
				<div class="form-group">
			 			<label class="control-label" for="nama"> Nama Siswa</label>
			 			<input type="text" name="nama" class="form-control" id="nama" required>
			 	</div>
			 	<div class="form-group">
			 			<label class="control-label" for="ttl"> Tempat Tanggal Lahir</label>
			 			<input type="text" name="ttl" class="form-control" id="ttl" required>
				</div>
				<div class="form-group">
			 			<label class="control-label" for="nisn"> Nis/Nisn</label>
			 			<input type="text" name="nisn" class="form-control" id="nisn" required>
				</div>
				<div class="form-group">
			 			<label class="control-label" for="komli"> Kelas/Kompetensi Keahlian</label>
			 			<input type="text" name="komli" class="form-control" id="komli" required>
				</div>
				<div class="form-group">
			 			<label class="control-label" for="status"> Status</label>
			 			<input type="text" name="status" class="form-control" id="status" required>
				</div>
			</div>
			<div class="modal-footer">
				<button type="reset" class="btn btn-danger">Reset</button>
				<input type="submit" class="btn btn-success" name="tekan" value="simpan">
	</div>
	</div>
	</div>
	</div>
	</form>
	<?php 
		if (isset($_POST["tekan"])) {

			if ( tambah ($_POST) > 0){
		echo "
			<script>
				alert('data berhasil ditambahkan');
				document.location.href = 'data.php';
			</script>
		";
	}
	else {
		echo "
		<script>
				alert('data gagal ditambahkan');
				document.location.href = 'data.php';
			</script>
		";
	}

		}
	 ?>

<br>




<br>
	

<div class="row">
	<div class="container">
		<table class="table table-bordered" >
			<thead>
				<tr>
					<th >No. Peserta</th>
					<th >Nama Siswa</th>
					<th >Tempat, Tanggal Lahir</th>
					<th > Nisn/Nis</th>
					<th > Kelas /Kompetensi Keahlian</th>
					<th >Status</th>
					<th> Pilihan</th>
					
				</tr>
			</thead>



			<tbody>
			<?php
			$qsiswa = mysqli_query($db_conn,"SELECT * FROM un_siswa LIMIT $awalData, $jumlahDataPerHalaman ");

			
			if(mysqli_num_rows($qsiswa) > 0){
				while($data = mysqli_fetch_array($qsiswa)){
					echo '<tr>';
					echo '<td>'.$data['no_ujian'].'</td>';
					echo '<td>'.$data['nama'].'</td>';
					echo '<td>'.$data['ttl'].'</td>';
					echo '<td>'.$data['nisn'].'</td>';
					echo '<td>'.$data['komli'].'</td>';
					echo '<td>';
					echo ($data['status']==1) ? 'Lulus' : '<em>Tidak Lulus</em>';
					echo '<td align="center">
							<a href="siswa_edit.php?id='.$data['id']. '" class="btn btn-primary btn-sm" <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Edit </a>
							<a href="hapus.php?id='.$data['id']. '" class="btn btn-danger btn-sm"  onclick="return confirm(\'Yakin akan menghapus siswa ini?\')"> <span class="glyphicon glyphicon-trash" aria-hidden="true"></span> Delete </a>
					</td>';
					echo '</td>';
					echo '</tr>';
				}
			} else {
				echo '<tr><td colspan="8"><em>Belum ada data! Segera lakukan upload data.</em></td></tr>';
			}
			?>

			</tbody>

		</table>

		<?php if( $halamanAktif > 1) : ?> 
		  	 <a href="?halaman=<?= $halamanAktif - 1; ?>">&laquo; </a>
    	<?php endif; ?>
	<!-- navigasi -->
	   <?php for($i = 1; $i <= $jumlahHalaman; $i++) : ?>
		 	<?php if( $i == $halamanAktif ) : ?>
			<a href="?halaman=<?= $i; ?>"  style="font-weight: italic; color: blue;"><?= $i; ?></a>
		<?php else : ?>
			<a href="?halaman=<?= $i; ?>"><?= $i; ?></a>
		<?php endif; ?>
	  <?php endfor; ?>

       <?php if( $halamanAktif < $jumlahHalaman) : ?>
		       <a href="?halaman=<?= $halamanAktif + 1; ?>">&raquo;</a>
       <?php endif; 

        ?>
	</div>


    </div>


<?php
include '_footer.php';
} else {
	header('Location: ./login.php');
}
?>