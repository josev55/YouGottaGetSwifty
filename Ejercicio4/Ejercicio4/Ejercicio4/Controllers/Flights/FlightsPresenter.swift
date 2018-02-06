//
//  FlightsPresenter.swift
//  Ejercicio4
//
//  Created by Jose Vildosola on 2/5/18.
//  Copyright © 2018 Jose Vildosola. All rights reserved.
//

import UIKit

class FlightsPresenter: FlightsPresenterProtocol {
    
    var flightsView: FlightsViewProtocol?
    var flightsRepository: FlightsRepositoryProtocol
    
    required init(flightsRepository: FlightsRepositoryProtocol) {
        self.flightsRepository = flightsRepository
    }
    
    func setView(view: FlightsViewProtocol) {
        self.flightsView = view
    }
    
    func obtainFlightList() {
        
        self.flightsView?.showLoadingIndicator()
        
        self.flightsRepository.obtainFlights(success: { (flights) in
            self.flightsView?.setFlightList(flights: flights)
            self.flightsView?.hideLoadingIndicator()
        }) { (error) in
            self.flightsView?.hideLoadingIndicator()
            self.flightsView?.showErrorDialog(error: error)
        }
    }
    
}
