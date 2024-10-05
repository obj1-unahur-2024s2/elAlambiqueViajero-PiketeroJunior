import lugares.*

object alambiqueVeloz {
    var combustible = 10

    method sufrirConsecuencias() {
        combustible = 0.max(combustible - 10)
    }

    method combustible() = combustible

    method esRapido() = true
}

object superChatarra {
    var combustible = 20
    var tieneMunicion = false 

    method sufrirConsecuencias() {
        tieneMunicion = !tieneMunicion //cada vez que viaja cambia la municion
    }

    method combustible() = if (tieneMunicion) 50 else 30

    method esRapido() = !tieneMunicion
}

object antiguallaBlindada {
    var combustible = 50
    var gangsters = 4
    
    method esRapido() = false
    
    method sufrirConsecuencias() {
        if (self.esRapido()){
            gangsters = 1.max(gangsters - 1)
            combustible = 0.max(combustible - 10)
        }else{
            combustible = 0.max(combustible - 5)
        }
    }

    method combustible() = combustible 
}

object superConvertibe  {
    var convertidoEn = alambiqueVeloz
    
    method esRapido() = false
    
    method sufrirConsecuencias() {
        convertidoEn = antiguallaBlindada
    }

    method combustible() = convertidoEn.combustible()

    
}
