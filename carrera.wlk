import vehiculos.*
import lugares.*



object carrera {
    var lugarDeCarrera = paris
    const inscriptos = []
    const rechazados = [] 
    
    method sePuedeInscribir(vehiculo) =
        lugarDeCarrera.sePuedeViajarEn(vehiculo)
    
    
    method inscribir(vehiculo) {
        if (self.sePuedeInscribir(vehiculo)){
            inscriptos.add(vehiculo)    
        }else{
            rechazados.add(vehiculo)
        }
    }

    method replanificacion(nuevoLugar) {
        lugarDeCarrera = nuevoLugar
        self.reinscripcion()
    }

    method verificacionInscriptos() =
        inscriptos.filter({v => lugarDeCarrera.sePuedeInscribir(v)})
    
    method verificacionRechazados() =
        inscriptos.filter({v => lugarDeCarrera.sePuedeInscribir(v)})
    
    method reinscripcion(){
        const todosLosAutos = inscriptos + rechazados
        //const todosLosAutos = []
        //todosLosAutos.addAll(inscriptos)
        //todosLosAutos.addAll(rechazados)
        inscriptos.clear()
        rechazados.clear()
        todosLosAutos.forEach({v => self.inscribir(v)})
    }

    method todosALaCiudad() {
        inscriptos.forEach({v => v.sufrirConsecuencias()})
    }
    
}
