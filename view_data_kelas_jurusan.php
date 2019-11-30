<?php

require_once('connect.php');
require_once('connect.php');

if($_SERVER['REQUEST_METHOD']=='GET') {
  
$npsn=$_GET["npsn"];


$result=mysqli_query($connect,"select aa.id_kelas_jurusan,aa.id_wali_kelas,aa.nama,aa.jumlah,bb.nama,bb.npsn from(
select a.id_kelas_jurusan,id_wali_kelas,a.nama,b.jumlah from (SELECT  id_kelas_jurusan,id_wali_kelas,concat(nama_kelas_jurusan,nomor_kelas) as nama from kelas_jurusan where npsn='$npsn')
 as a left join (select kelas_saat_ini,count(*) as jumlah 
from siswa where npsn='$npsn' group by kelas_saat_ini) as b on a.id_kelas_jurusan=b.kelas_saat_ini
) as aa left join (select id_pengguna,nama,npsn from pengguna_admin) as bb on aa.id_wali_kelas=bb.id_pengguna");

$data=array();

    while($data2=mysqli_fetch_array($result)){
  
    $data[]=$data2;
     
     
    }  
      
      echo json_encode($data);
}
?>
