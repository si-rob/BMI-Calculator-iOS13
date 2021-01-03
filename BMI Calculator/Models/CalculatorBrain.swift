//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Simon Roberts on 1/1/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit



struct CalculatorBrain {
    
    var bmi: BMI?
        
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0, green: 0.6540719867, blue: 0.8675666451, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.6622132659, green: 0, blue: 0.08407194167, alpha: 1))
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Uh-oh something went wrong"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
    }
    
}
