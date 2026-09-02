object casa {
    var cuenta = null
   var totalGastado = 0  

    method configurarCuenta(unaCuenta) {
       cuenta = unaCuenta
    }
    
    method totalGastado(){
        return totalGastado
    } 

    method cambioDeMes() {
        totalGastado = 0
    }
 
    method gastar(monto) {
        cuenta.extraer(monto)
        totalGastado += monto
   }
}

object cuentaCorriente {
  var saldo = 300

  method saldo() {
    return saldo
  }

  method depositar(monto) {
    saldo += monto
  }

  method extraer(monto) {
    saldo -= monto
  }
}

object cuentaConGastos {
    var saldo = 0
    const costoOperacion = 20

    method saldo(){
        return saldo
    }  
 
    method depositar(monto) {
        self.validarDeposito(monto)
        saldo += monto - costoOperacion
    }

    method validarDeposito(monto) {
        if (monto <= costoOperacion){
        self.error("el monto es insuficiente")
         }
    }

  method extraer(monto) {
    saldo -= monto
  }
}