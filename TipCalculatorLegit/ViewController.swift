//
//  ViewController.swift
//  TipCalculatorLegit
//
//  Created by Tony Lai on 4/1/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    override func viewDidLoad() {
               super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get initial bill amount and calculate tips
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Swift doesn't implicitly cast, so we need to explicitly cast here. Also, I assume "??" instantiates default value if none is provided.
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipPercentageLabel.text = String(format: "%.2f$", tip)
        totalLabel.text = String(format: "%.2f$", total)
    }
}

