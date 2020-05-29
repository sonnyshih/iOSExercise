//
//  ViewController.swift
//  HelloUIImageView
//
//  Created by sonny on 2020/5/29.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myPet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myPet.image = UIImage(named: "MyCat")
    }


}

