<html>
<head>
  <title>Aplikasi CRUD Plus Upload Gambar dengan PHP</title>
</head>
<body>
  <h1>Data Siswa</h1>
  <a href="simpan_data.php">Tambah Data</a><br><br>
  <table border="1" width="100%">
  <tr>
    <th>Foto</th>
    <th>ID</th>
    <th>Nama</th>
    <th colspan="2">Aksi</th>
  </tr>
  <?php
  // Load file koneksi.php
  include "koneksi.php";
  
  $query = "SELECT * FROM siswa"; // Query untuk menampilkan semua data siswa
  $sql = mysqli_query($connect, $query); // Eksekusi/Jalankan query dari variabel $query
  
  while($data = mysqli_fetch_array($sql)){ // Ambil semua data dari hasil eksekusi $sql
    echo "<tr>";
    echo "<td><img src='gambar/".$data['foto_siswa']."' width='100' height='100'></td>";
    echo "<td>".$data['name']."</td>";
    echo "<td>".$data['alamat']."</td>";
    echo "</tr>";
  }
  ?>
  </table>
</body>
</html>