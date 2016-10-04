//: Mini Reto Seman No. 04

import UIKit

var velocidades = ["Apagado", "VelocidadBaja", "VelocidadMedia", "VelocidadAlta"]


enum Velocidades : Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
    self = velocidadInicial
        
        
    }
}


class Auto {
    
    var velocidades: Velocidades
    
    init (){
        
        velocidades = Velocidades(velocidadInicial: Velocidades.Apagado)
        
    }
    
    func cambioDeVelocidad () -> (actual : Int, velocidadEnCadena : String){
        
        let actual = velocidades
        var velocidadEnCadena: String?
        
        switch velocidades{
            
            case Velocidades.Apagado:
            velocidadEnCadena = "Apagado"
            velocidades = Velocidades.VelocidadBaja
            
            case Velocidades.VelocidadBaja:
            velocidadEnCadena = "VelocidadBaja"
            velocidades = Velocidades.VelocidadMedia
            
            case Velocidades.VelocidadMedia:
            velocidadEnCadena = "VelocidadMedia"
            velocidades = Velocidades.VelocidadAlta
            
            case Velocidades.VelocidadAlta:
            velocidadEnCadena = "VelocidadAlta"
            velocidades = Velocidades.VelocidadMedia
            
        }
        
        return (actual.rawValue, velocidadEnCadena!)
        

    }
}

var auto = Auto()

for i in 1...20{
    
    let mensaje = auto.cambioDeVelocidad()
    
    print("\(mensaje.actual), \(mensaje.velocidadEnCadena)")
}
