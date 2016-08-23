//
//  ViewController.swift
//  Swift App
//
//  Created by Charles Wong on 20/8/16.
//  Copyright © 2016 Charles Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theLabel: UILabel!
    
    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var answerLabel2: UILabel!
    
    @IBAction func buttonCalc(_ sender: AnyObject) {
        
        print(text1.text!) //to show what's typed in the box
        print(text2.text!)
        
        answerLabel.text = String(Double(text1.text!)! + Double(text2.text!)!)
        
        //better way below
        
        answerLabel.text = "Answer is \(Double(text1.text!)! + Double(text2.text!)!)"
        
        //boolean
        let addition = false
        if addition {
            answerLabel2.text = "Answer is \(Double(text1.text!)! + Double(text2.text!)!)"
        } else {
            answerLabel2.text = "Answer is \(Double(text1.text!)! - Double(text2.text!)!)"
        }
        
    }
    
    var tapCount = 0 //start count from zero
    
    @IBAction func buttonTapped(_ sender: AnyObject) {
        
        theLabel.text = "Hello there!" //change label when button tapped
        print("Button tapped") //print at dev console
        tapCount = tapCount + 1 //go up +1 each time button tapped
        print(tapCount) //print the count
        if tapCount > 10 { //change the label when tapped > 10 times
            theLabel.text = "You tapped the button 10 times!"
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.view.backgroundColor = UIColor.red //make background red
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

