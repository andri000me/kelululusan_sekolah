<?php

require_once __DIR__ . '/vendor/autoload.php';

require 'database.php';

$mpdf = new \Mpdf\Mpdf();


$html = '<!DOCTYPE html>
<html>
<head>
	<title>Cetak Surat Kelulusan SISWA SMK NEGERI 3 PALANGKA RAYA</title>
</head>
<body>

<table  align="center">
	<tr>
	<td> <img src="plk.png" width="140" height="100"></td>
	<td><center><font size="2">PEMERINTAH PROVINSI KALIMANTAN TENGAH</font><br>
		<font size="4" style="font-weight: bold;">DINAS PENDIDIKAN  </font> <br>
		<font size="5" style="font-weight: bold;">SEKOLAH MENENGAH KEJURUAN NEGERI 3 PALANGKA RAYA  </font> <br>
		<font size="2">Alamat : Jalan R. A. Kartini No. 25 Palangka Raya</font><br>
		<font size="2">Telp: (0536) 3221633, email : smk3pky@yahoo.com, website: smkn3palangkaraya,sch.id</font><br>
		<font size="4" style="font-weight: bold;">KOTA PALANGKA RAYA  </font> 
	</td>
    </tr>
    <tr>
    	<td colspan="10" style="font-weight: bold;" ><hr></td>
    </tr>
  
</table>
<br>';

$id = $_GET["id"];

$sql_siswa =  query("SELECT * FROM un_siswa WHERE id =$id")[0];
var_dump($sql_siswa);

//var_dump($sql_siswa);

//var_dump($data_siswa);


if ($sql_siswa["status"] ==1) {
	$status_siswa = "LULUS";
}  else {
	$status_siswa = "Tidak Lulus ";
	}



$html .= '
<table  align="center" >
	<tr>
		<td style="font-size: 16px; font-weight: bold; text-align: center;" >SURAT KETERANGAN LULUS</td>

	</tr>
	<tr> 
		<td >Nomor: 421.2/......../14/SMKN-3 PLK/V/KP.11/2020</td>
	</tr>
</table>
<br>
<table align="left"  >
	<tr>
		<td style="text-align: justify;" >Yang bertanda tangan di bawah ini Kepala Sekolah Menengah Kejuruan Negeri 3 Palangka Raya  :</td>
	</tr>
</table>
<br>

<table width="100%">
	<tr>
		<td width="15%">Nama</td>
		<td width="1%">:</td>
		<td> Hj.SRI SUNDHARI, S.Pd, M.Pd</td>
	</tr>
	<tr>
		<td width="15%">Nip</td>
		<td width="1%">:</td>
		<td>19691209 199412 2 003</td>
	</tr>
	<tr>
		<td width="15%">Pangkat/Gol Ruang</td>
		<td width="1%">:</td>
		<td> Pembina Tingkat I, IV/b</td>
	</tr>
	<tr>
		<td width="15%">Unit Kerja</td>
		<td width="1%">:</td>
		<td> SMK Negeri 3 Palangka Raya</td>
	</tr>
</table>
<br>

<table align="left"  >
	<tr>
		<td style="text-align: justify;" >memberikan keterangan kepada  :</td>
	</tr>
</table>
<br>

<table   width="100%">
	<tr>
		<td width="15%">Nama</td>
		<td width="1%">:</td>
		<td>'. $sql_siswa["nama"] .'</td>
	</tr>
	<tr>
		<td width="15%">Nis/Nisn</td>
		<td width="1%">:</td>
		<td>'. $sql_siswa["nisn"] .'</td>
	</tr>
	<tr>
		<td width="15%">Tempat Tanggal Lahir</td>
		<td width="1%">:</td>
		<td>'. $sql_siswa["ttl"] .'</td>
	<tr>
		<td width="15%">Kelas / Kompetensi Keahlian</td>
		<td width="1%">:</td>
		<td>'. $sql_siswa["komli"] .'</td>
	</tr>
	<tr>
		<td width="15%">No.Peserta Ujian</td>
		<td width="1%">:</td>
		<td>'. $sql_siswa["no_ujian"] .'</td>
	</tr>
	<tr>
		<td width="15%">Asal Sekolah</td>
		<td width="1%">:</td>
		<td>SMK Negeri 3 Palangka Raya</td>
	</tr>
	<tr>
		<td width="15%">Alamat</td>
		<td width="1%">:</td>
		<td>Jalan Putri Junjung Buih 3 Gang SMN NO.38</td>
	</tr>
</table>
<br>';

$html .='


<table align="left"  >
	<tr>
		<td style="text-align: justify;" >adalah benar siswa SMK Negeri 3 Palangka Raya dan berdasarkan hasil Ujian Sekolah serta telah memenuhi seluruh kriteria dinyatakan '. $status_siswa  .' pada Tahun Pelajaran  2019/2020.</td>
	</tr>
</table>
<br>

<table align="left"  >
	<tr>
		<td style="text-align: justify;" >Demikian Surat Keterangan '. $status_siswa  .' sini diberikan untuk dapat dipergunakan sebagaimana mestinya.</td>
	</tr>
</table>
<br>

<table align="right"  >
	<tr>
		<td><img src="kepsek.jpg" width="340" height="200"></td>
	</tr>
</table>
<br>

</body>
</html>
';





$mpdf->WriteHTML($html);
$mpdf->Output('Surat_SKL.pdf', 'I');




?>

