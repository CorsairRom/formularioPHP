// seccion del rut

function isNumber(evt) {
    let charCode = evt.which;
    if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode === 75) {
      return false;
    }
    return true;
  }
  
  function checkRut(rut) {
    // Obtiene el valor ingresado quitando puntos y guión.
   
    rut.value = format(rut.value);
   
  }
  
  function format (rut) {
    rut = clean(rut)
    var result = rut.slice(-4, -1) + '-' + rut.substr(rut.length - 1)
    for (var i = 4; i < rut.length; i += 3) {
      result = rut.slice(-3 - i, -i) + '.' + result
    }
    return result;
  }
  
  function clean (rut) {
    return typeof rut === 'string'
      ? rut.replace(/^0+|[^0-9kK]+/g, '').toUpperCase()
      : ''
  }