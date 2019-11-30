<?php
require 'connect.php';

$pass=$_GET["pass"];
$NPSN=$_GET["npsn"];

if($pass=='hudiaakbar1974'){

$result=mysqli_query($connect,"select * from kelas_jurusan where npsn='$NPSN' and status=1 ");

}

?>
