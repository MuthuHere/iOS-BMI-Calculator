//
//  ResultViewController.swift
//  iOS-BMI-Calc
//
//  Created by Muthukumar on 11/01/2020.
//  Copyright © 2020 Muthu. All rights reserved.
//

import UIKit

class ResultViewController : UIViewController {
    
    var bmiValue = "0.0"
    var advice  = "Advice"
    var color  = UIColor.green
    
    @IBOutlet weak var labelBMI: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelBMI.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    
    @IBAction func btnRecalculate(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
