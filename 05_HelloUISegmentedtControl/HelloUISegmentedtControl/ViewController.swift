//
//  ViewController.swift
//  HelloUISegmentedtControl
//
//  Created by sonny on 2020/5/22.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func myToggleChanged(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            view.backgroundColor = UIColor.white
            
        case 1:
            view.backgroundColor = UIColor.black
            
        case 2:
            view.backgroundColor = UIColor.red
        
        case 3:
            view.backgroundColor = UIColor.orange
        
        case 4:
            view.backgroundColor = UIColor.yellow
            
        default:
            view.backgroundColor = UIColor.blue
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

