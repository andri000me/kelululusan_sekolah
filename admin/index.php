<?php
session_start();
if(isset($_SESSION['logged']) && !empty($_SESSION['logged'])){
include "../database.php";
include '_header.php';
?>
    <div class="container">
        <?php
        //tempatkan di sini halaman administrator
		if(isset($_REQUEST['hlm'])){
			$hlm = $_REQUEST['hlm'];
			
			switch($hlm){
				case 'user': include 'user.php'; break;
				case 'data': include 'data.php';
			}
		} else {
		?>
		<div class="jumbotron">
			<div class="container">
				<h1>Selamat Datang, Administrator!</h1>
				<p>Ini merupakan halaman admin Sekolah untuk  melakukan pengumuman <strong>Info Kelulusan <?=$hsl['tahun'] ?></strong>.</p>
				<p>Fasilitas yang tersedia seperti <strong>User(Pengguna)</strong> yang diberi hak untuk mengelola website ini dan import <strong>Data</strong> kelulusan dengan format excel csv.</p>
			</div>
		</div>
		<?php
		}
        ?>
    </div><!-- /.container -->
<?php 
include '_footer.php';
} else {
	header('Location: ./login.php');
}
?>