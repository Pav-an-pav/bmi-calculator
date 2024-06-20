
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more snack", color: .blue )
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Eat less snack", color: .red)
        } else {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: .green)
        }
        
    }
    
    func getBMIValue () -> String {
        return  String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice () -> String {
        return bmi?.advice ?? "Calculate again"
    }
    
    func getColor () -> UIColor {
        return bmi?.color ?? .gray
    }
}
