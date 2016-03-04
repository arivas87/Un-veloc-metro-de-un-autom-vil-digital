//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad: Velocidades
    
    init() {
        velocidad = .Apagado
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        // FIXME: Hay que empezar imprimiendo Apagado
        let actual = velocidad.rawValue
        var cadena: String
        
        switch velocidad {
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
            cadena = "Apagado"
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            cadena = "Velocidad baja"
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            cadena = "Velocidad media"
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            cadena = "Velocidad alta"
        }
        
        return (actual, cadena)
    }
}


let auto = Auto()

for i in 1...20 {
    let resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual), " + resultado.velocidadEnCadena)
}