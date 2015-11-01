//
//  ThirdViewController.swift
//  NSUserDefaults
//
//  Created by Sebastian Drew on 10/29/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var defaults = NSUserDefaults.standardUserDefaults()
        var stringValue = defaults.objectForKey("firstName") as! String
        
        secondLabel.text = stringValue
        
        if stringValue != "" {
            secondLabel.alpha = 0.5
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
