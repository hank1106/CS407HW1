//
//  ViewController3.swift
//  407HW1-2
//
//  Created by Zihan Zhang on 2/17/16.
//  Copyright © 2016 Zihan Zhang. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    var answers = [String]()
    
    @IBOutlet weak var text3: UITextField!
   
    @IBOutlet weak var q3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        q3.text=String("If 4.5% equals 15% of 180, what is x?")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button3(sender: AnyObject) {
        self.performSegueWithIdentifier("three", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "three") {
            let vc:ViewController4=segue.destinationViewController as!ViewController4
            answers.append(text3.text!)
            vc.answers = answers
        }
    }

}
