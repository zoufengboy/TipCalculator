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
        containerView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onTap)))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let percentSetting = defaults.integer(forKey: "tip_percent")
        
        tipControl.selectedSegmentIndex = percentSetting
        self.onEditingChanged(sender: self)
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

