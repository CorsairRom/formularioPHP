// seccion del rut

//está función es usada para evitar ingresar cualquier otro cáracter que no sea propiedades de un rut chileno
function isNumber(evt) {
    let charCode = evt.which;
    if (charCode > 31 && (charCode < 48 || charCode > 57) && charCode === 75) {
      return false;
    }
    return true;
  }
  
  function checkRut(rut) {
    rut.value = format(rut.value);
  }
  //función para formatear el input y darle una formato de rut chileno
  function format (rut) {
    rut = clean(rut)
    var result = rut.slice(-4, -1) + '-' + rut.substr(rut.length - 1)
    for (var i = 4; i < rut.length; i += 3) {
      result = rut.slice(-3 - i, -i) + '.' + result
    }
    return result;
  }
  //función para limpiar el rut de cualquier cáracter que no sea números o la letra k
  function clean (rut) {
    return typeof rut === 'string'
      ? rut.replace(/^0+|[^0-9kK]+/g, '').toUpperCase()
      : ''
  }