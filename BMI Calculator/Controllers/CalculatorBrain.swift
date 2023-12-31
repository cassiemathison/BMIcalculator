//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Cassie Mathison on 11/10/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if (bmiValue < 18.5){
            print("Underweight")
            bmi = BMI(value: bmiValue, advice: "Eat more pies.", color: UIColor.blue)
        }
        else if (bmiValue > 24.9) {
            bmi = BMI(value: bmiValue, advice: "Eat less pies.", color: UIColor.red)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle.", color: UIColor.green)
        }
        
       
    }
    
    func getBmiValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}

