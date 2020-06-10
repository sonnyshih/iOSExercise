//
//  ViewController.swift
//  HelloUserDefaults
//
//  Created by sonny on 2020/6/10.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Save info to userDefaults
        //UserDefaults.standard.set("Hello World", forKey: "name")
        
        // load info from userDefault
        if let loadedName = UserDefaults.standard.value(forKey: "name") as? String {
            print("loadedName=\(loadedName)")
        }
     
        //let fruitArray = ["apple", "banana", "mango"]
        //UserDefaults.standard.set(fruitArray, forKey: "sweetFruit")
        
        if let loadedFruit = UserDefaults.standard.value(forKey: "sweetFruit") as? [String] {
            print(loadedFruit[0])
        }
        
    }


}

