<?php
// Load file koneksi.php
include "koneksi.php";
// Ambil Data yang Dikirim dari Form
$nama = $_POST['nama'];
$no_hp= $_POST['no_hp'];
$alamat= $_POST['alamat'];
$password= $_POST['pass'];
$nama_sekolah= $_POST['nama_sekolah'];
$npsn= $_POST['npsn'];
$foto = $_FILES['foto_siswa']['name'];
$tmp = $_FILES['foto_siswa']['tmp_name'];
  
// Rename nama fotonya dengan menambahkan tanggal dan jam upload
$fotobaru = $foto;
// Set path folder tempat menyimpan fotonya
$path = "gambar/".$fotobaru;
// Proses upload
if(move_uploaded_file($tmp, $path)){ // Cek apakah gambar berhasil diupload atau tidak
  // Proses simpan ke Database
  $query = "INSERT INTO siswa VALUES('','".$nama."','".$no_hp."','".$alamat."','".$password."','".$nama_sekolah."','".$npsn."','".$fotobaru."')";
  $sql = mysqli_query($connect, $query); // Eksekusi/ Jalankan query dari variabel $query
  if($sql){ // Cek jika proses simpan ke database sukses atau tidak
    // Jika Sukses, Lakukan :
    header("location: upload.php"); // Redirect ke halaman index.php
  }else{
    // Jika Gagal, Lakukan :
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database.";
    echo "<br><a href='form_simpan.php'>Kembali Ke Form</a>";
  }
}else{
  // Jika gambar gagal diupload, Lakukan :
  echo "Maaf, Gambar gagal untuk diupload.";
  echo "<br><a href='form_simpan.php'>Kembali Ke Form</a>";
}
?>





