//
//  ViewController.swift
//  Tip Calculator Swift
//
//  Created by macbookair11 on 12/7/15.
//  Copyright © 2015 Sanaya Sanghvi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var peopleField: UITextField!
    
    @IBOutlet weak var onepersonLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        onepersonLabel.text="$0.00"
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultTip = defaults.integerForKey("defaultTip")
        
        tipControl.selectedSegmentIndex = defaultTip
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        let tipPercentages = [0.18, 0.20, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let peoplenumber = NSString(string: peopleField.text!).doubleValue
        
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        
        let personcost = total/peoplenumber
        
        onepersonLabel.text = "$\(personcost)"
        tipLabel.text = "$\(tip)"
        totalLabel.text =  "$\(total)"
        
        
        onepersonLabel.text = String (format: "$%.2f", personcost)
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
        
        
    }
    
    
    
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    
    
}





