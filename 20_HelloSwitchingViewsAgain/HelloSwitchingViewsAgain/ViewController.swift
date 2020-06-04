//
//  ViewController.swift
//  HelloSwitchingViewsAgain
//
//  Created by sonny on 2020/6/4.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func goToView2(_ sender: UIButton) {
        let lightRed = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "lightRed")
        
        // from button to top
        // present(lightRed, animated: true, completion: nil)
        
        // from left to right (UI Must have the Navigation Controller)
        self.navigationController?.pushViewController(lightRed, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

