//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mahdi Tk on 5/2/1403 AP.
//  Copyright © 1403 AP Angela Yu. All rights reserved.
//

import UIKit
import SwiftUI

struct CalculatorBrain {
    
    
    var bmi : BMI?
    let colors = [#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1) , #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1) , #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)]
    mutating func calculateBMI (height : Float , weight : Float){
        let bmiValue = (weight / pow(height, 2))

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more food :)", color: colors[0])
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are on the way ;)", color: colors[1])
        } else {
            bmi = BMI(value: bmiValue, advice: "Ah! Stop eating go out to workout", color: colors[2])
        }
    }
    
    func getBMIValue () -> BMI? {
        return bmi
    }
}
