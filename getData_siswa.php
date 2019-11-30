<?php
require_once('connect.php');

if($_SERVER['REQUEST_METHOD']=='GET') {

    $npsn = $_GET['npsn'];

    
     $query= "select aa.id_kelas_jurusan,aa.id_wali_kelas,aa.nama,aa.jumlah,bb.nama,bb.npsn from(
        select a.id_kelas_jurusan,id_wali_kelas,a.nama,b.jumlah from (SELECT  id_kelas_jurusan,id_wali_kelas,concat(nama_kelas_jurusan,nomor_kelas) as nama from kelas_jurusan where npsn='$npsn')
        as a left join (select kelas_saat_ini,count(*) as jumlah 
        from siswa where npsn='$npsn' group by kelas_saat_ini) as b on a.id_kelas_jurusan=b.kelas_saat_ini
        ) as aa left join (select id_pengguna,nama,npsn from pengguna_admin) as bb on aa.id_wali_kelas=bb.id_pengguna";
        $result= mysqli_query($con, $query);
     
        if(mysqli_num_rows($result) > 0){  
         $query= "select aa.id_kelas_jurusan,aa.id_wali_kelas,aa.nama,aa.jumlah,bb.nama,bb.npsn from(
            select a.id_kelas_jurusan,id_wali_kelas,a.nama,b.jumlah from (SELECT  id_kelas_jurusan,id_wali_kelas,concat(nama_kelas_jurusan,nomor_kelas) as nama from kelas_jurusan where npsn='$npsn')
            as a left join (select kelas_saat_ini,count(*) as jumlah 
            from siswa where npsn='$npsn' group by kelas_saat_ini) as b on a.id_kelas_jurusan=b.kelas_saat_ini
            ) as aa left join (select id_pengguna,nama,npsn from pengguna_admin) as bb on aa.id_wali_kelas=bb.id_pengguna";
                     $result= mysqli_query($con, $query);
                     $emparray = array();
                     if(mysqli_num_rows($result) > 0){ 
                     while ($row = mysqli_fetch_assoc($result)) {
                                 $emparray[] = $row;
                               }
                     }
           echo json_encode(array('siswa'=>$emparray) );
        }else{ 
            
        }
         mysqli_close($con);
 }