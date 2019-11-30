<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

    $id = $_POST['id'];

    require_once 'connect.php';

    $sql ="SELECT * FROM guru where id = '$id'";

    $response = mysqli_query($con, $sql);

    $result = array();
    $result['read'] = array();

    if(mysqli_num_rows($response) === 1){

        if($row = mysqli_fetch_assoc($response)){

            $r['name']          = $row['name'];
            $r['nip']           = $row['nip'];
            $r['nama_sekolah']  = $row['nama_sekolah'];        
            $r['mapel']         = $row['mapel'];
            $r['alamat']        = $row['alamat'];
            $r['no_hp']         = $row['no_hp'];
            $r['password']      = $row['password'];

            array_push($result["read"], $r);

            $result["success"] = "1";
            echo json_encode($result);
        }
    }
    
}
else{
        $result["success"] = "0";
        $result["message"] = "error!";

        echo json_encode($result);
        mysqli_close($con);
}
?>