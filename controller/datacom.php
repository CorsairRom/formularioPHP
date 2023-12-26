<?php 
    // recibiremos mediante ajax una peticion post la cual nos traera el id de la region, con la finalidad de realizar
    //  una consulta a las comunas condicionada por el el id de la region seleccionada, la respuesta sera una cadena que contiene
    // las opciones que se desplegaran en el select.
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