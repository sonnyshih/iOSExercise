//
//  ViewController.swift
//  HelloPlayAudio
//
//  Created by sonny on 2020/6/2.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlay: AVAudioPlayer?
    
    @IBAction func play(_ sender: UIButton) {
        audioPlay?.stop()
        audioPlay?.currentTime = 0.0
        audioPlay?.play()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Find sound path
        /*
        if let path = Bundle.main.path(forResource: "Right", ofType: "mp3") {
            // path to url
            let url = URL(fileURLWithPath: path)
        
            do {
                audioPlay  = try AVAudioPlayer(contentsOf: url)
                audioPlay?.enableRate = true // open changing playing speed
                // audioPlay?.rate = 2.0 // the play speed is double
                //audioPlay?.numberOfLoops = -1 // repeat unlimte
                //audioPlay?.volume = 0.3
            } catch {
                print(error.localizedDescription)
            }
            
        } else {
            print("No such file")
        }
        */
        
        // 以上的寫法可以改成下面方式
        // the newPath must have value, if there is not value, return.
        guard let newPath = Bundle.main.path(forResource: "Right", ofType: "mp3") else {
            print("No such file")
            return
        }
        
        do {
            audioPlay  = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: newPath))
            audioPlay?.enableRate = true // open changing playing speed
            // audioPlay?.rate = 2.0 // the play speed is double
            //audioPlay?.numberOfLoops = -1 // repeat unlimte
            //audioPlay?.volume = 0.3
        } catch {
            print(error.localizedDescription)
        }
        
    }


}
