//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dmitry Medvedev on 26.04.2023.
//

import UIKit

struct CalculatorBrain {
    private let calculateViews = CalculateViews.shared
    var bmi: BMI?
    var bmiValue: Float = 0.0
    
    mutating func getBMIValue() -> String {
        calculateBMI(bmiValue: getBMIValue())
        let bmiResult = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiResult
    }
    
    mutating func getAdvice() -> String {
        calculateBMI(bmiValue: getBMIValue())
        let advice = bmi?.advice ?? "No advice"
        return advice
    }
    
    mutating func getColor() -> UIColor {
        calculateBMI(bmiValue: getBMIValue())
        let color = bmi?.color ?? .darkGray
        return color
    }
    
    private mutating func getBMIValue() -> Float {
        let height = calculateViews.firstSlider.value
        let weight = calculateViews.secondSlider.value
        if height == 0 {
            bmiValue = 0.0
        } else {
            bmiValue = weight / (height * height)
        }
        return bmiValue
    }
    
    private mutating func calculateBMI(bmiValue: Float) {
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .systemBlue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .systemGreen)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .systemRed)
        }
    }
}
