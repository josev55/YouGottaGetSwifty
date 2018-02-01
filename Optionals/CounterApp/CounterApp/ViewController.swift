//
//  ViewController.swift
//  CounterApp
//
//  Created by Jose Vildosola on 2/1/18.
//  Copyright © 2018 Jose Vildosola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    var counter:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func upButtonClicked(_ sender: Any) {
        
//        if var cnt = counter {
//            cnt = cnt + 1
//            counter = cnt
//            counterLabel.text = String(format: "%d", arguments: [cnt])
//        }
        
        guard counter != nil else {
            return
        }
        counter = counter! + 1
        counterLabel.text = String(format: "%d", arguments:[counter!])
        
    }
    
    @IBAction func downButtonClicked(_ sender: Any) {
        
//        if var cnt = counter {
//            cnt = cnt - 1
//            counter = cnt
//            counterLabel.text = String(format: "%d", arguments: [cnt])
//        }
        
        guard counter != nil else {
            return
        }
        counter = counter! - 1
        counterLabel.text = String(format: "%d", arguments: [counter!])
    }
}

