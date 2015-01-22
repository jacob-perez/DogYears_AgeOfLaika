//
//  ViewController.swift
//  Dog Years
//
//  Created by Jacob Perez on 1/17/15.
//  Copyright (c) 2015 Jacob Perez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    
    
    @IBOutlet weak var convertedDogYearsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let yearFromTextField = enterHumanYearsTextField.text.toInt()!
        
        let conversionConstant = 7
        
        convertedDogYearsLabel.hidden = false
        convertedDogYearsLabel.text = "If your dog is " + "\(yearFromTextField)" + " in humans years, then your dog is " + "\(yearFromTextField * conversionConstant)" + " in dog years."
        
        enterHumanYearsTextField.text = ""
        enterHumanYearsTextField.resignFirstResponder()
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let convertedYeartoInteger = enterHumanYearsTextField.text.toInt()!
        let convertedYearToDouble = Double(convertedYeartoInteger)
        
        let conversionConstant10 = 10.5
        let conversionConstant4 = 4.0
        
        if convertedYearToDouble <= 2 {
            var productOfValue = Double(convertedYearToDouble * conversionConstant10)
            convertedDogYearsLabel.hidden = false
            convertedDogYearsLabel.text = "If your dog is " + "\(convertedYeartoInteger)" + " in humans years, then your dog is " + "\(productOfValue)" + " in dog years."
            
            enterHumanYearsTextField.text = ""
            enterHumanYearsTextField.resignFirstResponder()
        }
        else {
            var productOfValue = Double((convertedYearToDouble - 2) * conversionConstant4 + 21)
            convertedDogYearsLabel.hidden = false
            convertedDogYearsLabel.text = "If your dog is " + "\(convertedYeartoInteger)" + " in humans years, then your dog is " + "\(productOfValue)" + " in dog years."
            
            enterHumanYearsTextField.text = ""
            enterHumanYearsTextField.resignFirstResponder()
        }


    }

}

