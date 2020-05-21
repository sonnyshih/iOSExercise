//
//  ViewController.swift
//  PrimeNumber
//
//  Created by sonny on 2020/5/20.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func goButtonClick(_ sender: UIButton) {
        //1. Take out the number string from the inputTextField
        if let inputText = inputTextField.text {
            
            //2. Convert the number string to Int
            if let inputNumber = Int(inputText) {
                //3. Using the checkPrime function to get result
                //4. Using the resultLabel to show result.
                //resultLabel.text = checkPrime(testNumber: inputNumber)
                //resultLabel.isHidden = false
                
                // using the closure
                checkPrime(number: inputNumber, handler: {
                    (result: String) in
                    self.resultLabel.text = result
                    self.resultLabel.isHidden = false
                })
            }
        }
        
        inputTextField.text = ""
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.becomeFirstResponder()
    }


    func checkPrime(testNumber:Int)->String{
        var isPrime:Bool?=true

        if (testNumber<=0) {
            isPrime = nil
        } else if (testNumber==1) {
            isPrime = true
        } else {
            for i in 2..<testNumber {
                if (testNumber%i==0) {
                    isPrime = false
                    break
                }
            }
        }

        if isPrime==true {
            return "\(testNumber) is primes"
        } else if (isPrime==false) {
            return "\(testNumber) is not primes"
        } else {
            return "Please enter a number greater than 0!"
        }

    }

    // Using the closure
    func checkPrime(number:Int, handler:(String)->()){
        
        handler(checkPrime(testNumber: number))
    }
    
}

