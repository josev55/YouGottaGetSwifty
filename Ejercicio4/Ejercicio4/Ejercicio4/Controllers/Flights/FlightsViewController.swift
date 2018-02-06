//
//  FlightsViewController.swift
//  Ejercicio4
//
//  Created by Jose Vildosola on 2/6/18.
//  Copyright © 2018 Jose Vildosola. All rights reserved.
//

import UIKit

class FlightsViewController: UIViewController {

    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var flightTableView: UITableView!
    
    let reuseIdentifier = "flightCell"
    var flightList: [Flight]?
    
    fileprivate let flightPresenter = FlightsPresenter(flightsRepository: FlightsRepository())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerTableViewComponents()
        flightPresenter.setView(view: self)
        flightPresenter.obtainFlightList()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func registerTableViewComponents() {
//        self.flightTableView.register(FlightTableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        self.flightTableView.dataSource = self
    }

}

extension FlightsViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard self.flightList != nil else {
            return 0
        }
        return self.flightList!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as! FlightTableViewCell
        
        let flight = self.flightList?[indexPath.row]
        
        cell.originLabel.text = flight?.origin
        cell.destinationLabel.text = flight?.destination
        cell.pnrLabel.text = flight?.pnr
        cell.flightTimeLabel.text = String(format: "%.2f Hr", Double((flight?.estimatedTime)!) / 60)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

extension FlightsViewController : FlightsViewProtocol {
    func setFlightList(flights: [Flight]) {
        self.flightList = flights
        self.flightTableView.reloadData()
    }
    
    func showErrorDialog(error: NSError) {
        let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        self.present(alert, animated: true, completion: nil)
    }
    
    func showLoadingIndicator() {
        self.loadingIndicator.startAnimating()
    }
    
    func hideLoadingIndicator() {
        self.loadingIndicator.stopAnimating()
    }
    
    
}
