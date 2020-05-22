//
//  ViewController.swift
//  HelloUISlider
//
//  Created by sonny on 2020/5/22.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func sliderChange(_ sender: UISlider) {
        
        myLabel.text = "\(Int(sender.value))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


  
}

