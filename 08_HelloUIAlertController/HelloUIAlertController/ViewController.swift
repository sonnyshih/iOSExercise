//
//  ViewController.swift
//  HelloUIAlertController
//
//  Created by sonny on 2020/5/29.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBAction func showAlert(_ sender: UIButton) {
        let myAlert = UIAlertController(title: "Hello", message: "How are you?", preferredStyle: .alert)
        
        let okAction =  UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
            self.dismiss(animated: true, completion: nil)
        }
        
        let helloAction =  UIAlertAction(title: "Say Hello", style: .destructive) {
            (action:UIAlertAction) in
            print("Hello World")
            self.dismiss(animated: true, completion: nil)
        }
        
        let cancelAction =  UIAlertAction(title: "Cancel", style: .cancel) {
            (action:UIAlertAction) in
            print("Cancel")
            self.dismiss(animated: true, completion: nil)
        }
        
        myAlert.addAction(okAction)
        myAlert.addAction(helloAction)
        myAlert.addAction(cancelAction)
        present(myAlert, animated: true, completion: nil)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

