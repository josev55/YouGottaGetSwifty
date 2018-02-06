//
//  Flight.swift
//  Ejercicio4
//
//  Created by Jose Vildosola on 2/5/18.
//  Copyright © 2018 Jose Vildosola. All rights reserved.
//

import Foundation
import ObjectMapper

struct Flight : Mappable {
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        flightId <- map["flightId"]
        origin <- map["origin"]
        destination <- map["destination"]
        estimatedTime <- map["estimatedFlightTime"]
        pnr <- map["pnr"]
    }
    
    var flightId: Int?
    var origin: String?
    var destination: String?
    var estimatedTime: Int?
    var pnr: String?
}
