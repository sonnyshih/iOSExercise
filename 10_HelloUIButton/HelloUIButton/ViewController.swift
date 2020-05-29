//
//  ViewController.swift
//  HelloUIButton
//
//  Created by sonny on 2020/5/29.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let codButton:UIButton = {
        let newButton = UIButton(type: .system)
        newButton.frame = CGRect(x: 200, y: 400, width: 100, height: 50)
        newButton.setTitle("Code Press", for: .normal)
        newButton.setTitle("Code Prssing", for: .highlighted)
        newButton.addTarget(self, action: #selector(ViewController.hitMe(_:)), for: .touchUpInside)
        newButton.addTarget(self, action: #selector(ViewController.hitMe(_:)), for: .touchUpInside)
        return newButton
    }()
    
    @IBAction func buttonPress(_ sender: UIButton) {
        print("Hello")
    }
    
    @objc func hitMe(_ thisButton: UIButton) {
        print("Yo! What's up?")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // How to make system style button via code
        let newButton = UIButton(type: .system)
        newButton.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
        newButton.setTitle("Press", for: .normal)
        newButton.setTitle("Prssing", for: .highlighted)
        newButton.addTarget(self, action: #selector(ViewController.hitMe(_:)), for: .touchUpInside)
        view.addSubview(newButton)
        
        
        // How to make image button via code
        let anotherButton = UIButton(type: .custom)
        anotherButton.frame = CGRect(x: 200, y: 200, width: 114, height: 54)
        anotherButton.setImage(UIImage(named: "PlayButton"), for: .normal)
        anotherButton.setImage(UIImage(named: "PlayButtonPressed"), for: .highlighted)
        anotherButton.addTarget(self, action: #selector(ViewController.hitMe(_:)), for: .touchUpInside)
        view.addSubview(anotherButton)
        
        // Using closure to make a button
        view.addSubview(codButton)
    }


}

