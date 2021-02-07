<?php

define('DB_HOST','localhost');
define('DB_USER','root');
define('DB_PASS','');
define('DB_NAME','un2020');

$db_conn = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);

if(mysqli_connect_errno()){
	echo 'Gagal terhubung ke database: '.mysqli_connect_error();
	exit();
}


function query($query) {
	global $db_conn;
	$result = mysqli_query($db_conn, $query);
	$rows = [];
	while ( $row = mysqli_fetch_assoc($result) ) {
		$rows[] = $row;
	}
	return $rows;
 }


function tambah($data){
	global $db_conn;

		//ambil data dari setiap elemen di mysql 
	$no_ujian	   = $data["no_ujian"];
	$nama          = htmlspecialchars($data["nama"]);
	$ttl           = htmlspecialchars($data["ttl"]);
	$nisn		   = htmlspecialchars($data["nisn"]);
	$komli		   = htmlspecialchars($data["komli"]);
	$status		   = htmlspecialchars($data["status"]);


//masukan data query ke dalam mysql
	$query = "INSERT INTO un_siswa
				VALUES
				('', '$no_ujian', '$nama', '$ttl', '$nisn', '$komli', '$status')

			  "; 
	//var_dump($query);die;
    mysqli_query($db_conn, $query); 

    return mysqli_affected_rows($db_conn); 

}



function hapus($id) {
	global $db_conn;
	mysqli_query($db_conn,"DELETE FROM un_siswa WHERE id = $id");
	return mysqli_affected_rows($db_conn);
}


function ubah($data) {
	global $db_conn;

	
		//ambil data dari setiap elemen di mysql 
	$id			   = $data["id"];
	$no_ujian	   = $data["no_ujian"];
	$nama          = htmlspecialchars($data["nama"]);
	$ttl           = htmlspecialchars($data["ttl"]);
	$nisn		   = htmlspecialchars($data["nisn"]);
	$komli		   = htmlspecialchars($data["komli"]);
	$status		   = htmlspecialchars($data["status"]);

//masukan data query ke dalam mysql
	$query = "UPDATE  un_siswa SET  

				no_ujian	                 = '$no_ujian',
				nama                       = '$nama',
				ttl        					= '$ttl',
				nisn	                 =  '$nisn',
				komli					 =  '$komli',
				status 						 =  '$status'
					WHERE id = $id

			";


			
//	var_dump($query);die;
    mysqli_query($db_conn, $query); 


   return mysqli_affected_rows($db_conn); 


}




?>