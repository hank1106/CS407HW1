//
//  ViewController2.swift
//  407HW1-2
//
//  Created by Zihan Zhang on 2/17/16.
//  Copyright © 2016 Zihan Zhang. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var answers = [String]()
    
    @IBOutlet weak var text2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button2(sender: AnyObject) {
        self.performSegueWithIdentifier("two", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "two") {
            let vc:ViewController3=segue.destinationViewController as!ViewController3
            answers.append(text2.text!)
            vc.answers = answers
        }
    }


}
