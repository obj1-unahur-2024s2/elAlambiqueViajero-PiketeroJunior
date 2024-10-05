import lugares.*
import vehiculos.*



object luke {
    var vehiculo = alambiqueVeloz
  //var recuerdo = null
    const lugaresVisitados = [] 
    
    method cantLugaresVisitados() = lugaresVisitados.size()
    
    method ultimoRecuerdo() = lugaresVisitados.last().recuerdo()

    method viajar(lugar) {
        if (lugar.sePuedeViajarEn(vehiculo)){
            lugaresVisitados.add(lugar)
            vehiculo.sufrirConsecuencias()
        }else{ 
            console.println("No se puede viajar a " + lugar)
        }        
    }

    method puedeViajarA(lugar) = 0

    method cambiarVehiculo(otroVehiculo) {
        vehiculo = otroVehiculo
    }

    
         
}
