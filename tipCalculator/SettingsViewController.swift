//
//  SettingsViewController.swift
//  tipCalculator
//
//  Created by FengZou on 8/18/17.
//  Copyright © 2017 FengZou. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let percentIndex = defaults.integer(forKey: "tip_percent")
        
        tipPercentage.selectedSegmentIndex = percentIndex
    }
    
    
    @IBAction func onDefaultPercentageChange(_ sender: UISegmentedControl) {
        let defaults = UserDefaults.standard
        let index = tipPercentage.selectedSegmentIndex
        
        defaults.set(index, forKey: "tip_percent")
        defaults.synchronize()
    }
    
}
