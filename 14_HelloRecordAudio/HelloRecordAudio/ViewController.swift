//
//  ViewController.swift
//  HelloRecordAudio
//
//  Created by sonny on 2020/6/2.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit
import AVFoundation

enum AudioSessionMode {
    case record
    case play
}

class ViewController: UIViewController, AVAudioRecorderDelegate {

    var recorderHelper: RecordHelper?
    
    
    @IBAction func recordAudio(_ sender: UIButton) {
        recorderHelper?.recordAudio()
        
    }
    
    
    @IBAction func stopRecording(_ sender: UIButton) {
        recorderHelper?.stopRecording()
    }
    
    @IBAction func playRecordingSound(_ sender: UIButton) {
        recorderHelper?.playRecordingSound()
    }
    
    @IBAction func stopPlaying(_ sender: UIButton) {
        recorderHelper?.stopPlaying()
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        recorderHelper = RecordHelper()
    }


}

