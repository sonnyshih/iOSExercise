//
//  ViewController.swift
//  HelloTabBarAgain
//
//  Created by sonny on 2020/6/4.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = "First View"
        
        if let secondView = self.tabBarController?.viewControllers?[1] as? NewViewController {
            secondView.messageFromViewOne = "Hi!"
        }
        
    }


}

