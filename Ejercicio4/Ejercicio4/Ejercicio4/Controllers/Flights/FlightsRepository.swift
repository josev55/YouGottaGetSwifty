//
//  FlightsRepository.swift
//  Ejercicio4
//
//  Created by Jose Vildosola on 2/6/18.
//  Copyright © 2018 Jose Vildosola. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class FlightsRepository: FlightsRepositoryProtocol {
    func obtainFlights(success: @escaping([Flight]) -> Void, failure: @escaping(NSError) -> Void) {
        Alamofire.request("http://10.68.6.38:3000/flights").responseArray { (response: DataResponse<[Flight]>) in
            guard response.result.value != nil else {
                failure(NSError(domain: "FlightRepository", code: -2, userInfo: nil))
                return
            }
            
            success(response.result.value!)
        }
    }
}
