import luke.*
import vehiculos.*



object paris {
    method recuerdo() {
        return "llavero torre eiffel"
    }

    method sePuedeViajarEn(unVehiculo) =
        unVehiculo.combustible() >= 10 
}

object buenosAires {
    var presidente = "Riquelme"

    method recuerdo() = if (presidente == "Riquelme")
    "Mate con Yerba" else "Mate sin Yerba"

    method cambiarPresidente(nuevoPresi) {
        presidente = nuevoPresi
    }

    method sePuedeViajarEn(unVehiculo) =
        unVehiculo.esRapido()  
}

object bagdad {
    var anio = 2024

    method recuerdo() {
        if (anio < 1945){
            "Petroleo"
        }else if (anio.between(1946, 1999)){
            "Armas"
        }else{
            "Jardines de Babilonia"
        }
    }

    method anioActual(nuevoAnio) {
        anio = nuevoAnio
    }

    method sePuedeViajarEn(unVehiculo) = true 
}

object lasVegas {
    var homenajeandoA = paris
    
    method recuerdo() = homenajeandoA.recuerdo()

    method homenajeandoA(lugar) {
        homenajeandoA = lugar
    }

    method sePuedeViajarEn(unVehiculo) = 
        homenajeandoA.sePuedeViajarEn(unVehiculo)

}

object brasil {
    var jugador = "gabigol"
    method recuerdo() = "Foto con " + jugador
    
    method sePuedeViajarEn(unVehiculo) =
        unVehiculo.combustible() >= 10

    method cambiarJugador(nuevoJugador) {
        jugador = nuevoJugador
    }
}