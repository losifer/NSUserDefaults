//
//  ViewController.swift
//  NSUserDefaults
//
//  Created by Sebastian Drew on 10/29/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button(sender: UIButton) {
        
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(textField.text, forKey: "firstName")
        defaults.synchronize()
        
    }

}

