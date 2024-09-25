import lugares.*
import vehiculos.*



object luke {
    var vehiculo = alambiqueVeloz
    var recuerdo = null
    const lugar = [] 
    
    method recuerdo() = recuerdo
    /*method recuerdo(nuevoRecuerdo) {
        recuerdo = nuevoRecuerdo
    }*/
    method viaje(lugarVisitado) {
        recuerdo = lugarVisitado.recuerdo()    
    }
}
