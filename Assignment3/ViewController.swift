//
//  ViewController.swift
//  Assignment3
//
//  Created by Daniel Corona on 3/26/16.
//  Copyright © 2016 Matt Robillard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var subjectLabel: UILabel!
    
    @IBOutlet weak var timerLabel: UILabel!
    var count = 30
    var stop = false
    
    @IBAction func nextButton(sender: UIButton) {
        stop = true
        setTimer()
        changeWord()
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeWord()
        setTimer()
        //updateTimer
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    func setTimer()
    {
        count = 30
        timerLabel.text = String(count)
        var timer : NSTimer
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("updateTimer"), userInfo: nil, repeats: true)
        
        if stop == true
        {
            timer.invalidate()
        }
    }
    
    func updateTimer()
    {
        
        if count >= 0
        {
            count--
            if count == -1
            {
                count = 30
                changeWord()
            }
            timerLabel.text = String(count)
        }
    }
    

    func changeWord()
    {
        let num = Int(rand()%23)
        
        let wordArray : [String] = ["Protocol", "Let vs Var", "Computed Initializers", "Setter Observers",
            "Functions", "External Parameters", "Default Parameters", "Anonymous Functions", "Optional Chaining", "Failable Initializers", "Casting", "Class Methods", "Extensions", "Enumeration", "Error Handling", "Dictionaries", "Conditional Binding", "Inheritance", "Structs", "Enums", "Classes", "Subscripts", "Setter Observers"]
        
        subjectLabel.text = wordArray[num]
        
        //return wordArray[num]
    }
    
}

