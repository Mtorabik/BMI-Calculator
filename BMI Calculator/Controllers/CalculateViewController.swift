//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var weightLable: UILabel!
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderButton(_ sender: UISlider) {
        let height = String(format: "%.2f" , sender.value)
        heightLable.text = "\(height)m"
    }
    @IBAction func weightSliderButton(_ sender: UISlider) {
        let weight = String(Int(sender.value))
        weightLable.text = "\(weight)Kg"
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            let bmi = calculatorBrain.getBMIValue()
            destinationVC.bmiValue = String(format: "%.1f" , bmi?.value ?? 0.0)
            destinationVC.bmiAdvice = bmi?.advice
            destinationVC.bmiColor = bmi?.color
        }
    }
    
}

