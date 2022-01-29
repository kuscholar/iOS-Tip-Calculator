//
//  ViewController.swift
//  iOS Tip Calculator
//
//  Created by Kusch Qin on 1/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    

    override func viewDidLoad() {
        
        // Do any additional setup after loading the view.
        super.viewDidLoad()
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        // let defaults = UserDefaults.standard
        // Get Total tip by multiplying tip * tipPercentage
        let tipOne = UserDefaults().double(forKey: "tipOne")
        let tipTwo = UserDefaults().double(forKey: "tipTwo")
        let tipThree = UserDefaults().double(forKey: "tipThree")
        let tipPercentages = [tipOne, tipTwo, tipThree]
        
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
   
}

