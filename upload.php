<html>
<head>
  <title>Aplikasi CRUD dengan PHP</title>
</head>
<body>
  <h1>Tambah Data Siswa</h1>
  <form method="post" action="simpan_data.php" enctype="multipart/form-data">
  <table cellpadding="8">
  <tr>
    <td>Nama</td>
    <td><input type="text" name="nama"></td>
  </tr>
  <tr>
    <td>No Handphone</td>
    <td><input type="text" name="no_hp"></td>
  </tr>
  <tr>
    <td>Alamat</td>
    <td><input type="text" name="alamat"></td>
  </tr>
  <tr>
    <td>passwiord</td>
    <td><input type="password" name="pass"></td>
  </tr>
  <tr>
    <td>nama_sekolah</td>
    <td><input type="text" name="nama_sekolah"></td>
  </tr>
  <tr>
    <td>Npsn</td>
    <td><input type="text" name="npsn"></td>
  </tr>
    <td>Foto</td>
    <td><input type="file" name="foto_siswa"></td>
  </tr>
  </table>
  
  <hr>
  <input type="submit" value="Simpan">
  <a href="index.php"><input type="button" value="Batal"></a>
  </form>
</body>
</html>