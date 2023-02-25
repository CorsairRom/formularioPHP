<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
    <script
            src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
            crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>

    
    <?php  
        include 'config/database.php';
        $consultaReg = "SELECT * FROM regiones";
        $queryReg = mysqli_query($mysqli, $consultaReg);
        $consultaCom = "SELECT nom_com FROM comunas";
        $queryCom = mysqli_query($mysqli, $consultaCom);
        $consultaCandidatos = "SELECT * FROM candidatos";
        $queryCandidatos = mysqli_query($mysqli, $consultaCandidatos);
    
    ?>
    
    <div class="container">
        <div class="row">
            <div class="col m-4">
            </div>
        </div>
        <div class="row">
            <div class="col-12  mt-3 border rounded-3 shadow p-3 mb-4">
                <h4>Formulario Votación:</h4>
                <div class="container" id="contenedorInputs">
                    <form action="#" class="spacediv" id="form">
                        <div class="form-group">
                            <label class="labelText" for="">Nombre y Apellido</label>
                            <input type="text" required class="inputText" id="nom_app" name="nom_app">
                        </div>
                        <div class="form-group mt-2">
                            <label class="labelText" for="">Alias</label>
                            <input type="text" required class="inputText" id="alias" pattern="[a-zA-Z0-9-]+" name="alias">
                        </div>
                        <div class="form-group mt-2">
                            <label class="labelText" for="">RUT</label>
                            <input type="text" required class="inputText" id="valRut" name="valRut" placeholder=" " onkeypress = 'return isNumber(event)' oninput = "return checkRut(this)" maxlength= "12">
                        </div>
                        <div class="form-group mt-2">
                            <label class="labelText" for=""> Email</label>
                            <input type="email" required class="inputText" id="email" name="email">
                        </div>
                        <div class="form-group mt-2">
                            <label class="labelText" for="selectReg"> Región</label>
                            <select name='selectReg'  id="selectReg" class="inputText" >
                            <option value="0">Seleccionar Región</option>
                            <?php  foreach ($queryReg as $optionReg):?>
                                <option value="<?php  echo $optionReg['id_reg'] ?>"><?php  echo $optionReg['nom_reg'] ?></option>
                            <?php  endforeach ?>
                            </select>
                        </div>
                        <div class="form-group mt-2">
                            <label class="labelText" for="selectCom">Comuna</label>
                            <select name="selectCom" id="comselec" class="inputText">
                                <option value="0" id="opval">Seleccionar Comuna</option>
                        </select>
                        </div>
                        
                        <div class="form-group mt-2">
                            <label class="labelText" for=""> Candidato</label>
                            <select name="selectCandidatos" id="selectCandidatos" class="inputText">
                                <option value="0">Seleccionar Candidato</option>
                                <?php  foreach ($queryCandidatos as $optionCandidatos):?>
                                    <option value="<?php  echo $optionCandidatos['id_candidato'] ?>"><?php  echo $optionCandidatos['nom_candidato'] ?></option>
                                <?php  endforeach ?>
                            </select>
                        </div>
                        <div class="form-group mt-2">
                            <label class="labelText" for=""> Como se enteró de Nosotros</label>
                            <label for=""><input type="checkbox" id="chbox1" class="chxb checkbox">Web</label>
                            <label for=""><input type="checkbox" id="chbox2" class="chxb checkbox">TV</label>
                            <label for=""><input type="checkbox" id="chbox3" class="chxb checkbox">Redes Sociales</label>
                            <label for=""><input type="checkbox" id="chbox4" class="chxb checkbox">Amigo</label>
                        </div>
                        <div class="btnDiv">
                        <button type="submit" class="btn btn-primary">Votar</button>
                        </div>
                        
                    </form>
                    <!-- <button onclick="data()">Ver data</button> -->
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/cargarbd.js"></script>
    <script src="assets/js/checkRut.js"></script>
    <script src="assets/js/formvalid.js"></script>
    <script>
        $('#selectReg').change(function() {
            let val = $('#selectReg').val();
            $.ajax({
                type: "POST",
                url:'controller/datacom.php',
                data: "id_reg=" + val,
                success: function(res){
                    $('#comselec').html(res);
                }
            });
        });
    </script>
</body>
</html>