//
//  ViewController4.swift
//  407HW1-2
//
//  Created by Zihan Zhang on 2/17/16.
//  Copyright © 2016 Zihan Zhang. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    var answers = [String]()
    var scores = [String]()
    
    @IBOutlet weak var finalScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let correctAnswers = ["108","8","600"]
        let count = compareResults(self.answers, correctAnswers: correctAnswers)
        let resultPercentage = Double(count)/3.0*100
        finalScore.text=String("You got ") + String(count) + String("question(s) correct\n") + String(resultPercentage) + String("%");
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func compareResults(answers:[String], correctAnswers:[String])->Int{
        var count:Int = 0
        for(index,element) in answers.enumerate(){
            if(element == correctAnswers[index]){
                count = count + 1;
            }
        }
        return count
    }
    
    @IBAction func button4(sender: AnyObject) {
        self.performSegueWithIdentifier("four", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "four") {
            let vc:ViewController=segue.destinationViewController as!ViewController
            answers.removeAll()
            vc.answers = answers
        }
    }

}
