<?php 
    // mediane un bloque try catch realizaremos un insert de los datos del votante, esto para cumplir con la validacion de duplicidad de rut, 
    // ya que en la base de datos el votante tendra como id su rut y en caso que este vuelva a ingresar un voto la base de datos no lo permitiria al arrogar un
    //error de duplicidad
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