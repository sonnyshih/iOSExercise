//
//  ViewController.swift
//  Hello Swift
//
//  Created by sonny on 2020/5/14.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myTitle: UILabel!
    
    @IBAction func pressButton(_ sender: UIButton) {
        
        myTitle.text = "Hello Swift"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

