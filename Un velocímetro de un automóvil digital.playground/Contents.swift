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
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        switch velocidad {
        case .Apagado:
                velocidad = Velocidades.VelocidadBaja
                return (velocidad.rawValue, "VelocidadBaja")
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            return (velocidad.rawValue, "VelocidadMedia")
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            return (velocidad.rawValue, "VelocidadAlta")
        case .VelocidadAlta:
            velocidad = Velocidades.VelocidadMedia
            return (velocidad.rawValue, "VelocidadMedia")
        }
    }
}


let auto = Auto()

for i in 1...20 {
    let resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual), " + resultado.velocidadEnCadena)
}