//
//  ViewController.swift
//  HelloPickerView
//
//  Created by sonny on 2020/6/1.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    let numberArray = ["1", "2", "3", "4", "5", "6", "7", "8"]
    let fruitArray = ["apple", "banana", "mango", "watermelon"]
    
    // How many Sets
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    // Every set has how many items
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return numberArray.count    // first set has 2 items
        } else {
            return fruitArray.count    // second set has 4 items
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component==0 {
            return numberArray[row]
        } else {
            return fruitArray[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            print("number: \(numberArray[row])")
        } else {
            print("fruit: \(fruitArray[row])")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

