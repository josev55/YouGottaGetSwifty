//: Playground - noun: a place where people can play

import UIKit

class Truck : Car {
    
}

class Car {
    let color:String?
    let numberOfDoors:Int?
    let topSpeed:Int?
    var currentSpeed:Int = 0
    
    init(color: String, numberOfDoors: Int, topSpeed: Int) {
        self.color = color
        self.numberOfDoors = numberOfDoors
        self.topSpeed = topSpeed
    }
    
    func accelerate(speed: Int = 60) {
        if currentSpeed >= speed {
            return
        }
        currentSpeed = speed
    }
    
    func decelerate(speed: Int = 60) {
        if currentSpeed <= speed {
            return
        }
        currentSpeed = speed
    }
}



struct GeoPoint {
    let latitud: Double?
    let longitude: Double?
}
