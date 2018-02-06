//
//  FlightsContract.swift
//  Ejercicio4
//
//  Created by Jose Vildosola on 2/5/18.
//  Copyright © 2018 Jose Vildosola. All rights reserved.
//

import Foundation

protocol FlightsViewProtocol {
    func setFlightList(flights: [Flight])
    func showErrorDialog(error: NSError)
    func showLoadingIndicator()
    func hideLoadingIndicator()
}

protocol FlightsPresenterProtocol {
    
    func setView(view: FlightsViewProtocol)
    
    func obtainFlightList()
}

protocol FlightsRepositoryProtocol {
    
    func obtainFlights(success: @escaping([Flight]) -> Void, failure: @escaping(NSError) -> Void)
    
}
