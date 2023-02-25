<?php 
    include '../config/database.php';
    $id_reg = $_POST['id_reg'];
    $consultaCom = "SELECT * FROM comunas WHERE fk_reg ='$id_reg' ";
    $queryCom = mysqli_query($mysqli, $consultaCom);
    $cadena='<option value='.'>Selecciona un colorway</option>';
    foreach($queryCom as $cw){
        $cadena='<option value='.$cw['id_com'].'>'.$cw['nom_com'].'</option>';
        echo  $cadena."</select>";
    }
?>