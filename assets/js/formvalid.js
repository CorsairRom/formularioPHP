const validRut = (rut) =>{
    let valor = rut;
    let bodyRut = valor.slice(0, -1);
    let dv = valor.slice(-1).toUpperCase();
    rut.value = format(rut.value);
    if (bodyRut.length < 7) {
        return false;
    }
    suma = 0;
    multiplo = 2;
    for (i = 1; i <= bodyRut.length; i++) {
        index = multiplo * valor.charAt(bodyRut.length - i);
        suma = suma + index;

        if (multiplo < 7) {
          multiplo = multiplo + 1;
        } else {
          multiplo = 2;
        }
      }
      dvEsperado = 11 - (suma % 11);
      dv = dv == "K" ? 10 : dv;
      dv = dv == 0 ? 11 : dv;

      if (dvEsperado != dv) {
        $('#valRut').css('border', '1px solid red');
        return false;
      } else {
        $('#valRut').css('border', '1px solid blue');   
        return true;
      }
};


$('#form').on('submit', function(evt) {
    let alias;
    let chk, booleanCandidatos;
    let form = $(this);
    let sobrenombre = form.find('#alias');
    let nom = form.find('#nom_app').val();
    let alias_len = sobrenombre.val().length;
    if (alias_len < 5) {
      evt.preventDefault();
      $('#alias').after('<span>Tú alias debe tener al menos 5 carácteres</span>')
      alias = false;
    }
    var chkb = $('.checkbox');
    var chkb_sel = chkb.filter(':checked');
    if (chkb_sel.length < 2) {
      evt.preventDefault();
      alert('Debe seleccionar al menos dos casillas en: Como se entero de Nosotros');
      chk = false;
    };
    let rut = clean($('#valRut').val());
    let booleanRut = validRut(rut);
    if (booleanRut == false) {
      evt.preventDefault();
      alert('Rut Inválido')
    }
    let valcandidatos = $('#selectCandidatos').val();
    if (valcandidatos < 1) {
      evt.preventDefault();
      alert('Seleccione un candidato')
      booleanCandidatos = false;
    }
    let valcomuna = $('#comselec').val();
    if (valcomuna < 1) {
      evt.preventDefault();
      alert('seleccione una comuna')
    }
    let valreg = $('#selectReg').val();
    if (valreg < 1) {
      evt.preventDefault();
      alert('seleccione una región')
    }
    if (booleanRut && alias && chk && booleanCandidatos) {
      var dataString = 'nom_app=' + nom + '&valRut=' + rut;
      $.ajax({
        type: "POST",
        url:'controller/insertform.php',
        data: dataString,
        success: function(res){
            $('body').html(res);
        }
      });
    }
});

