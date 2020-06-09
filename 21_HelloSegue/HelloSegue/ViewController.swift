//
//  ViewController.swift
//  HelloSegue
//
//  Created by sonny on 2020/6/4.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LightRedViewControllerDelegate {

    
    @IBOutlet weak var myTextInput: UITextField!

    func setColor(colorType: String) {
        if colorType == "red" {
            view.backgroundColor = .red
        } else if colorType == "green" {
            view.backgroundColor = .green
        } else if colorType == "blue" {
            view.backgroundColor = .blue
        }
    }
    
    
    @IBAction func changeView(_ sender: UIButton) {
        
        if let inputText = myTextInput.text {
            if inputText == "" {
                // no input, pop up an alert
                let myAlert = UIAlertController(title: "No Input", message: "Please enter something", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                myAlert.addAction(okAction)
                present(myAlert, animated: true, completion: nil)
                
            } else {
                //Change View
                performSegue(withIdentifier: "goToView2", sender: inputText)
                
                // Clear text
                myTextInput.text = ""
                myTextInput.resignFirstResponder()
            }
            
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToView2" {
            if let lightRed = segue.destination as? LightRedViewController {
                lightRed.messageFromView = sender as? String
                lightRed.delegate = self
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

