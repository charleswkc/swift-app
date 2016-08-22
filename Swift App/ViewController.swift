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
    
   
    @IBAction func buttonCalc(_ sender: AnyObject) {
    
        print(text1.text!) //to show what's typed in the box
        print(text2.text!)
    
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

