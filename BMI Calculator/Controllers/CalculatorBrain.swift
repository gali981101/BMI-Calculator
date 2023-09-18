//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Terry Jason on 2023/9/18.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
}


// MARK: Get Value

extension CalculatorBrain {
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi!.advice
    }
    
    func getColor() -> UIColor {
        return bmi!.color
    }
    
}


// MARK: Caulculate

extension CalculatorBrain {
    
    mutating func caulculateBMI(_ weight: Float, _ height: Float) {
        let bmiValue = weight/pow(height, 2)
        weightHealth(value: bmiValue)
    }
    
    private mutating func weightHealth(value: Float) {
        if value < 18.5 {
            bmi = BMI(value: value, advice: "Eat something, please", color: .systemMint)
        } else if value < 24.9 {
            bmi = BMI(value: value, advice: "Fit Man is you", color: .green)
        } else {
            bmi = BMI(value: value, advice: "D.O.N.E", color: UIColor.red)
        }
    }
    
}



