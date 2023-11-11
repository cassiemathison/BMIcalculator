//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Cassie Mathison on 11/10/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue: String = ""
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmi = weight / pow(height, 2)
        bmiValue = String(format: "%.1f", bmi)
    }
    
    func getBmiValue() -> String {
         return bmiValue
    }
}

