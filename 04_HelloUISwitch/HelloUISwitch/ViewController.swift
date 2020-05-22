//
//  ViewController.swift
//  HelloUISwitch
//
//  Created by sonny on 2020/5/22.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBAction func makeAChange(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch is On")
            view.backgroundColor = UIColor.white
        } else {
            print("Switch is off")
            view.backgroundColor = UIColor.blue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mySwitch.isOn = false
        makeAChange(mySwitch)
        
        let cgRect = CGRect(x: view.frame.midX-51/2, y: view.frame.maxY - 100, width: 51, height: 31)
        
        let codeSwitch = UISwitch(frame: cgRect)
        view.addSubview(codeSwitch)
        
        codeSwitch.addTarget(self, action: #selector(ViewController.onCodeSwitchClikc(_:)), for: .valueChanged)
        
    }

    @objc func onCodeSwitchClikc(_ sender:UISwitch) {
        if sender.isOn {
            print("Switch is On")
            view.backgroundColor = UIColor.white
        } else {
            print("Switch is off")
            view.backgroundColor = UIColor.blue
        }
    }
    
}

