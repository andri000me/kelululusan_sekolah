<?php
include "database.php";
$que = mysqli_query($db_conn, "SELECT * FROM un_konfigurasi");
$hsl = mysqli_fetch_array($que);
$timestamp = strtotime($hsl['tgl_pengumuman']);
//echo $timestamp;

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Website Kelulusan SMK Negeri 3 Palangka Raya ">
    <meta name="author" content="Borneo Lab">
    <title>Pengumuman Kelulusan SMK 3 PKY</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/jasny-bootstrap.min.css" rel="stylesheet">
	<link href="css/kelulusan.css" rel="stylesheet">
	<link href="oke/font-awesome.min.css" rel="stylesheet" >

</head>

<body>
    <nav class="navbar navbar-default bg-success navbar-static-top">
        <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="./">Info Kelulusan  <?=$hsl['sekolah'] ?></a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
              <ul class="nav navbar-nav navbar-right">
                <li><a href="./">Beranda</a></li>
                <li><a href="#about">Tentang</a></li>
                <li><a href="#contact">Kontak</a></li>
              </ul>
            </div><!--/.nav-collapse -->
        </div>
    </nav>
    
    <div class="container">
        <h2>Pengumuman Kelulusan SMK Negeri 3 Palangka Raya <?=$hsl['tahun'] ?></h2>
		<!-- countdown -->
		
		<div id="clock" class="lead"></div>
		
		<div id="xpengumuman">
		<?php
		if(isset($_REQUEST['submit'])){
			//tampilkan hasil queri jika ada
			$no_ujian = $_REQUEST['nomor'];
			
			$hasil = mysqli_query($db_conn,"SELECT * FROM un_siswa WHERE no_ujian='$no_ujian'");
			if(mysqli_num_rows($hasil) > 0){
				$data = mysqli_fetch_array($hasil);
				
		?>
			<table class="table table-bordered">
				<tr><td>Nama Siswa</td><td><?php echo $data['nama']; ?></td></tr>
				<tr><td>Tempat, Tanggal Lahir</td><td><?php echo $data['ttl']; ?></td></tr>
				<tr><td>Nomor Ujian</td><td><?php echo $data['no_ujian']; ?></td></tr>
				<tr><td>Nis / Nisn </td><td><?php echo $data['nisn']; ?></td></tr>
				<tr><td>Kelas, Kompetensi Keahlian</td><td><?php echo $data['komli']; ?></td></tr>
			</table>
			
			
			<?php
			if( $data['status'] == 1 ){
				echo '<div class="alert alert-success" role="alert"><strong>SELAMAT !</strong> Anda dinyatakan LULUS.</div>';
			} else {
				echo '<div class="alert alert-warning" role="alert"><strong>MAAF !</strong> Anda harus memenuhi Panggilan Sekolah Kembali. <br> Anda harus menghubungi segera dengan nomor berikut : <br> <br>
				<strong>  0853 3272 1622 Bu Aulia(Administrasi Sekolah) <strong>
				</div>';
			}	

			?>

			<table align="center">
			<tr>
				<td>
					<a href="cetak_siswa.php?id=<?=$data["id"]; ?>"> <button class="btn btn-primary"> <span class="glyphicon glyphicon-print" aria-hidden="true"></span>
					 Cetak SKL</button> </a>
			</tr>
			</table>

		<?php
			} else {
				echo 'nomor ujian yang anda inputkan tidak ditemukan! periksa kembali nomor ujian anda.';
				//tampilkan pop-up dan kembali tampilkan form
			}
		} else {
			//tampilkan form input nomor ujian
		?>
		<br>
        <p style="text-align: center;">Masukkan nomor peserta Ujianmu.</p>
        
        <form method="post">
            <div class="input-group">
                <input type="text" name="nomor" class="form-control"  placeholder="Nomor Ujian" required>
                <span class="input-group-btn">
                    <button class="btn btn-default" type="submit" name="submit">Cek!</button>
                </span>
            </div>
        </form>
		<?php
		}
		?>
		</div>
    </div><!-- /.container -->
	
	<footer class="footer">
		<div class="container">
			<p class="text-muted">&copy; <?=$hsl['tahun'] ?> &middot; BorneoLAB</p>
		</div>
	</footer>
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script src="js/jasny-bootstrap.min.js"></script>
	<script type="text/javascript">
	var skrg = Date.now();
	$('#clock').countdown("<?=$hsl['tgl_pengumuman'] ?>", {elapse: true})
	.on('update.countdown', function(event) {
	var $this = $(this);
	if (event.elapsed) {
		$( "#xpengumuman" ).show();
		$( "#clock" ).hide();
	} else {
		$this.html(event.strftime('Pengumuman dapat dilihat: <span>%H Jam %M Menit %S Detik</span> lagi'));
		$( "#xpengumuman" ).hide();
	}
	});

	</script>
</body>
</html>