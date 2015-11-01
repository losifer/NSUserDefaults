//
//  SecondViewController.swift
//  NSUserDefaults
//
//  Created by Sebastian Drew on 10/29/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var buttonTwoOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var defaults = NSUserDefaults.standardUserDefaults()
        var stringValue = defaults.objectForKey("firstName") as! String
        
        nameLabel.text = stringValue
        
        if stringValue != "" {
            buttonTwoOutlet.alpha = 0
        } else {
            buttonTwoOutlet.alpha = 1
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTwo(sender: UIButton) {
        
       
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
