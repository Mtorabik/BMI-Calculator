//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Mahdi Tk on 5/2/1403 AP.
//  Copyright © 1403 AP Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var BMILable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    
    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        BMILable.text = bmiValue
        adviceLable.text = bmiAdvice
        view.backgroundColor = bmiColor
    }
    

    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
