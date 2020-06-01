//
//  ViewController.swift
//  Fortune Teller
//
//  Created by sonny on 2020/5/29.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit
import GameKit
import AudioToolbox

class ViewController: UIViewController {

    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBOutlet weak var yourFortune: UIImageView!
    
    @IBAction func tellMeSomething(_ sender: UIButton) {
        showAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if event?.subtype == .motionShake {
            showAnswer()
        }
    }
    
    func showAnswer(){
        
        if yourFortune.isHidden {
            // 1. make a random number 1~6
            let answer = GKRandomSource.sharedRandom().nextInt(upperBound: 6) + 1
            
            // 2. change image
            yourFortune.image = UIImage(named: "\(answer)")
            yourFortune.isHidden = false
            
            // 3. sound
            AudioServicesPlaySystemSound(1000)
            
            
        } else {
            yourFortune.isHidden = true
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

