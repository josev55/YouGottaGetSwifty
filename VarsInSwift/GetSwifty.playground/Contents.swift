//: Playground - noun: a place where people can play
import UIKit


// Definimos una variable mutable
var money = 100000

// Imprimimos el valor actual de la variable
print(money)

// Reasignamos el valor a 'money'
money = 50000

// Imprimimos el valor de 'money'
print(money)

// Definimos una constante (Inmutable)
let repositoryUrl = "https://github.com/josev55/YouGottaGetSwifty.git"

// En esta linea intentamos modificar su valor (Descomentar para ver que falla)
// repositoryUrl = "My New URL that isn't an URL in reality"


/*
 Un ejemplo de lo que pasa con las clases cuando se definen las propiedades de una u otra manera (var o let).
 Supongamos que tenemos una clase Car
 */

class Car {
    var numberOfWheels: Int?
    var numberOfDoors: Int?
    let hasAirConditioner = false
    
    init(){}
    
    init(numberOfWheels: Int, numberOfDoors: Int) {
        self.numberOfWheels = numberOfWheels
        self.numberOfDoors = numberOfDoors
    }
    
    func toString() -> String {
        return "Number of Wheels: \(numberOfWheels) | Number of Doors: \(numberOfDoors) | Has Air Conditioner: \(hasAirConditioner)"
    }
}

/*
 Luego creamos una instancia de Car sobre la cual trabajar e intentamos modificar las propiedades
 */

var myFiat600 = Car()

myFiat600.numberOfWheels = 4
myFiat600.numberOfDoors = 3
// myFiat600.hasAirConditioner = true

/*
 Como se puede apreciar si definimos las propiedades de una clase mediante var,
 estas pueden ser modificadas y si las definimos como let no pueden ser modificadas (Linea 43).
 
 Un caso interesante es cuando asignamos una instancia de clase a una variable, a continuación se ejemplifica este caso.
 Asumamos que tenemos 3 instancias de la clase Car
 */

let pegueot207 = Car(numberOfWheels: 4, numberOfDoors: 5)

let pegueot208 = Car()

var pegueot308 = Car()

/*
 Si yo trato de modificar las propiedades de una instancia declarada como let estas se podrán modificar siempre que la propiedad sea declarada como var, ya que la mutabilidad de las propiedades no depende del modificador de la instancia.
 */

pegueot207.numberOfDoors = 3

print(pegueot207.toString())

/*
 Por otra parte si trato de cambiar la referencia de una "variable" definida como let obtendremos un error de compilación (Descomentar la linea 82)
 */

// pegueot208 = pegueot207gst

