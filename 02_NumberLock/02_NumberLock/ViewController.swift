//
//  ViewController.swift
//  02_NumberLock
//
//  Created by sonny on 2020/5/15.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {

    // make a random number(1~100).
    var answer = GKRandomSource.sharedRandom().nextInt(upperBound: 100)+1
    var maxNumber = 100
    var minNumber = 1
    var isOver = false;
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    // Change the status bar to light
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func makeAGuest(_ sender: Any) {
        
        if(isOver==false){
                print(answer)
                
                let input = inputTextField.text!
            
                inputTextField.text = ""
                
                let inputNumber = Int(input)
                
                if (inputNumber==nil) {
                    
                    messageLabel.text = "No input! Guess a number between \(minNumber) ~ \(maxNumber)"
                    
                } else {
                    
                    if (inputNumber!>maxNumber) {
                        
                        messageLabel.text = "Too large! Guess a number between \(minNumber) ~ \(maxNumber)"
                        
                    } else if(inputNumber! < minNumber) {
                        messageLabel.text = "Too small! Guess a number between \(minNumber) ~ \(maxNumber)"
                        
                    } else if(inputNumber! == answer){
                        messageLabel.text = "You are right, press [Guest] to play again!"
                        isOver=true
                        
                        backgroundImageView.image = UIImage(named: "Finish")
                        
                    } else {
                        
                        if(inputNumber! > answer){
                            maxNumber = inputNumber!
                        } else {
                            minNumber = inputNumber!
                        }
                        
                        messageLabel.text = "Try again! Guess a number between \(minNumber) ~ \(maxNumber)"
                    }
                    
                }
                
        } else {
            maxNumber = 100
            minNumber = 1
            messageLabel.text = "Guess a number between \(minNumber) ~ \(maxNumber)"
            answer = GKRandomSource.sharedRandom().nextInt(upperBound: 100)+1
            isOver = false
            backgroundImageView.image = UIImage(named: "BG")
            
        }
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // push the keyboard up.
        inputTextField.becomeFirstResponder()
        
        
    }


}

