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
    
    @IBOutlet weak var finalScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let correctAnswers = ["1","2","3"]
        let correct = compareResults(self.answers, correctAnswers: correctAnswers)
        let resultPercentage = Double(correct)/3.0*100
        finalScore.text=String("you get") + String(resultPercentage)
        // Do any additional setup after loading the view, typically from a nib.
        print(answers[0])
        print(answers[1])
        print(answers[2])
        
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


}
