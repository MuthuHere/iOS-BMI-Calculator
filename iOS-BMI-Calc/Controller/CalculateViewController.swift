//
//  ViewController.swift
//  iOS-BMI-Calc
//
//  Created by Muthukumar on 09/01/2020.
//  Copyright © 2020 Muthu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiBrain = BmiBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func heightChanged(_ sender: UISlider) {
        
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        
        weightLabel.text = "\(Int(sender.value))KG"
    }
    @IBAction func calculateBMITapped(_ sender: UIButton) {
        bmiBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        
        self.performSegue(withIdentifier:"showResult", sender:self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult" {
            let resultVC = segue.destination as! ResultViewController
            let bmi =   bmiBrain.getUserBMI()
            
            resultVC.bmiValue = String(format:"%.1f",bmi)
            resultVC.advice =  bmiBrain.getAdvice()
            resultVC.color = bmiBrain.getColor()
        }
    }
    
}

