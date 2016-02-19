//
//  ViewController.swift
//  407HW1-2
//
//  Created by Zihan Zhang on 2/17/16.
//  Copyright © 2016 Zihan Zhang. All rights reserved./Users/Hank/Documents/developer/407HW1/407HW1/ViewController.swift
//

import UIKit

class ViewController: UIViewController {
    
    var answers = [String]()

    @IBOutlet weak var text1: UITextField!
    
    
    @IBOutlet weak var q1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        q1.text=String("The average of 63, 64 85 and x is 80.\n What is the value of x?")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func button1(sender: AnyObject) {
        self.performSegueWithIdentifier("one", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "one") {
            let vc:ViewController2=segue.destinationViewController as!ViewController2
            answers.append(text1.text!)
            vc.answers = answers
        }
    }

}

