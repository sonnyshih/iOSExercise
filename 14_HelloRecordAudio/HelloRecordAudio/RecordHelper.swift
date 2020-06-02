//
//  RecordHelper.swift
//  HelloRecordAudio
//
//  Created by sonny on 2020/6/2.
//  Copyright © 2020 sonny. All rights reserved.
//

import Foundation
import AVFoundation

class RecordHelper: NSObject, AVAudioRecorderDelegate {
    var audioRecord: AVAudioRecorder?
    var audioPlayer: AVAudioPlayer?
    var isRecording = false

    func settingAudioSession(toMode mode:AudioSessionMode ){
        audioPlayer?.stop()
        
        
        let session = AVAudioSession.sharedInstance()
        do {
            switch mode {
            case .record:
                try session.setCategory(AVAudioSession.Category.playAndRecord)
            case .play:
                try session.setCategory(AVAudioSession.Category.playback)
            }
            
            try session.setActive(false)
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
       
        if flag == true {
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: recorder.url)
            } catch {
                print(error.localizedDescription)
            }
        }
    }

    
    func recordAudio() {
         settingAudioSession(toMode: .record)
         audioRecord?.prepareToRecord()
         audioRecord?.record()
         isRecording = true;
         
     }
     
     
     func stopRecording() {
         if audioRecord != nil {
             audioRecord?.stop()
             isRecording = false
             settingAudioSession(toMode: .play)
         }
     }
     
     func playRecordingSound() {
         if isRecording == false {
             audioPlayer?.stop()
             audioPlayer?.currentTime = 0.0
             audioPlayer?.play()
         }
     }
     
     func stopPlaying() {
         if isRecording == false {
             audioPlayer?.stop()
             audioPlayer?.currentTime = 0.0
         }
     
     }
    
    override init() {
        super.init()
        let fileName = "User.wav"
        let path = NSHomeDirectory() + "/Documents/" + fileName
        let url = URL(fileURLWithPath: path)
        
        let recordSettings:[String: Any] = [
            AVEncoderAudioQualityKey: AVAudioQuality.min.rawValue,
            AVEncoderBitRateKey: 16,
            AVNumberOfChannelsKey: 2,
            AVSampleRateKey: 44100.0
        ]
        
        
        do {
            audioRecord = try AVAudioRecorder(url: url, settings: recordSettings)
            audioRecord?.delegate = self
        } catch {
            print("Error=" + error.localizedDescription)
        }
    }
    
}
