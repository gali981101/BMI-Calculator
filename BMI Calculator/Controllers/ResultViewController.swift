//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Terry Jason on 2023/9/18.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var color: UIColor?
    var bmiValue: String? 
    var advice: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
    }

    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
   
}
