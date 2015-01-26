//
//  ViewController.swift
//  tips
//
//  Created by Derrick Or on 1/26/15.
//  Copyright (c) 2015 derrickor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var billAmountField: UITextField!
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipControl: UISegmentedControl!
    
    @IBAction func billAmountChanged(sender: AnyObject) {
        var tipPercentages = [0.18,0.2,0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = NSString(string: billAmountField.text).doubleValue
        var tip = billAmount * tipPercentage;
        var total = billAmount + tip;
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func viewTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

