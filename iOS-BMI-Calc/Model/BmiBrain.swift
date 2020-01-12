//
//  BmiBrain.swift
//  iOS-BMI-Calc
//
//  Created by Muthukumar on 10/01/2020.
//  Copyright © 2020 Muthu. All rights reserved.
//

import UIKit

struct BmiBrain{
    
    var bmi : BMI?
    
    func getUserBMI() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0" )
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Advice is here"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
    
    
    mutating  func calculateBMI(height:Float,weight:Float) {
        
        let bmiValue  = weight / (height * height)
        var advice = ""
        var color  = UIColor.green
        
        if bmiValue < 18.5
        {
            advice = "Underweight take healthy food"
            color = UIColor.orange
        } else if bmiValue  < 24.9 {
            advice = "Normal Weight"
            color = UIColor.green
        }else {
            advice = "Over Weight"
            color = UIColor.red
        }
        bmi = BMI(value: bmiValue, advice: advice, color: color)
        
    }
}
