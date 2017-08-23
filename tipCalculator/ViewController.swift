//
//  ViewController.swift
//  tipCalculator
//
//  Created by FengZou on 8/14/17.
//  Copyright © 2017 FengZou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        billAmountTextLabel.alpha = 0
        tipTextLabel.alpha = 0
        totalTextLabel.alpha = 0
        billAmountTextField.alpha = 0
        tipLabel.alpha = 0
        totalLabel.alpha = 0
        
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var billAmountTextLabel: UILabel!
    @IBOutlet weak var tipTextLabel: UILabel!
    @IBOutlet weak var totalTextLabel: UILabel!
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let percentSetting = defaults.integer(forKey: "tip_percent")
        billAmountTextField.becomeFirstResponder()
        tipControl.selectedSegmentIndex = percentSetting
        billAmountTextLabel.alpha = 0
        tipTextLabel.alpha = 0
        totalTextLabel.alpha = 0
        billAmountTextField.alpha = 0
        tipLabel.alpha = 0
        totalLabel.alpha = 0

        
        self.onEditingChanged(sender: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 2, animations: {
            self.billAmountTextLabel.alpha = 1
            self.tipTextLabel.alpha = 1
            self.totalTextLabel.alpha = 1
            self.billAmountTextField.alpha = 1
            self.tipLabel.alpha = 1
            self.totalLabel.alpha = 1
        })
        
    }
    

    @IBAction func onEditingChanged(_ sender: Any) {
        let billAmount = NSString(string:billAmountTextField.text!).doubleValue
        let tipPercentageArray = [0.15, 0.18, 0.20]
        let tipPercentage = tipPercentageArray[tipControl.selectedSegmentIndex]
        let tip = billAmount * tipPercentage
        let total = billAmount * (1.0 + tipPercentage)
        
        tipLabel.text = String(format:"%.2f", tip)
        totalLabel.text = String(format:"%.2f", total)
    }
    
    @IBAction func tipControlChange(_ sender: Any) {
        let defaults = UserDefaults.standard
        let index = tipControl.selectedSegmentIndex
        
        defaults.set(index, forKey: "tip_percent")
        defaults.synchronize()
        self.onEditingChanged(sender: self)
    }
    
    func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

