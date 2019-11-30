<?php
require_once('connect.php');

if($_SERVER['REQUEST_METHOD']=='GET') {

    $npsn = $_GET['npsn'];

    
     $query= "SELECT * FROM siswa WHERE npsn='$npsn'";
        $result= mysqli_query($con, $query);
     
        if(mysqli_num_rows($result) > 0){  
         $query= "SELECT * FROM siswa WHERE npsn='$npsn'";
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