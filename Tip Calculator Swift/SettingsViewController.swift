//
//  SettingsViewController.swift
//  Tip Calculator Swift
//
//  Created by macbookair11 on 12/7/15.
//  Copyright © 2015 Sanaya Sanghvi. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipdefaultControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func changeValue(sender: AnyObject) {
        let defaultTip = tipdefaultControl.selectedSegmentIndex
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultTip, forKey: "defaultTip")
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let defaultTip = defaults.integerForKey("defaultTip")
        
        tipdefaultControl.selectedSegmentIndex = defaultTip
    }
    
}
