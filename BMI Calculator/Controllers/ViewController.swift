//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
        heightLabel.text = String(round(sender.value * 100) / 100.0) + "m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        weightLabel.text = String(format: "%.0f", sender.value) + "Kg"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

