//
//  SecondViewController.swift
//  ToDoList
//
//  Created by sonny on 2020/6/10.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    var infoFromViewOne: Int?
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBOutlet weak var myTextInput: UITextField!
    @IBOutlet weak var myButton: UIButton!
    
    @IBAction func textFieldDidChanged(_ sender: UITextField) {
        if sender.text != "" {
            myButton.setTitle("OK", for: .normal)
        } else {
            myButton.setTitle("Back", for: .normal)
        }
    }
    
    @IBAction func buttonPress(_ sender: UIButton) {
        if let text = myTextInput.text {
            
            guard let firstViewControler = tabBarController?.viewControllers?[0] as? FirstViewController
                else { return }
            
            if text != "" {
                
                if infoFromViewOne != nil {
                    firstViewControler.toDo[infoFromViewOne!] = text
                    infoFromViewOne = nil
                } else {
                    firstViewControler.toDo.append(text)
                }
               
            } else {
                
                if infoFromViewOne != nil {
                    firstViewControler.toDo.remove(at: infoFromViewOne!)
                    infoFromViewOne = nil
                }
                
            }
            
            firstViewControler.myTableView.reloadData()
            UserDefaults.standard.set(firstViewControler.toDo, forKey: "todo")

        }
        
        myTextInput.text = ""
        myButton.setTitle("Back", for: .normal)
        
        self.tabBarController?.selectedIndex = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextInput.becomeFirstResponder()
        myTextInput.delegate = self
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if infoFromViewOne != nil {
            //print(infoFromViewOne!)
            if let firstController = tabBarController?.viewControllers?[0] as? FirstViewController {
                myTextInput.text = firstController.toDo[infoFromViewOne!]
                myButton.setTitle("OK", for: .normal)
            }
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        buttonPress(UIButton())
        return true
    }
    
}

