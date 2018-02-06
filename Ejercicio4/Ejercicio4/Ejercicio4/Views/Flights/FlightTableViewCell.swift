//
//  FlightTableViewCell.swift
//  Ejercicio4
//
//  Created by Jose Vildosola on 2/6/18.
//  Copyright © 2018 Jose Vildosola. All rights reserved.
//

import UIKit

class FlightTableViewCell: UITableViewCell {

    @IBOutlet weak var originLabel: UILabel!
    @IBOutlet weak var destinationLabel: UILabel!
    @IBOutlet weak var pnrLabel: UILabel!
    @IBOutlet weak var flightTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
