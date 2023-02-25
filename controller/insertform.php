<?php 
    try {
        include '../config/database.php';
        $nom_app = trim($_POST['nom_app']);
        $valRut = trim($_POST['valRut']);
        $sqlstatement = "INSERT INTO `votantes` (`rut_votante`, `nom_ape`) VALUES ('$valRut', '$nom_app')";
        $queryCom = mysqli_query($mysqli, $sqlstatement)or die('error '.mysqli_error($mysqli)); ;
        echo '<script language="javascript">alert("Gracias por tu votación");</script>';
    } catch (mysqli_sql_exception $e) {
        echo '<script language="javascript">alert("Este rut ya tiene registrada una votación");</script>';
    }
    
?>