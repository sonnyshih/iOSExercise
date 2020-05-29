//
//  ViewController.swift
//  ColorFinder
//
//  Created by sonny on 2020/5/22.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var redValue = 255
    var greenValue = 255
    var blueValue = 255
    
    @IBOutlet weak var redText: UILabel!
    @IBOutlet weak var greenText: UILabel!
    @IBOutlet weak var blueText: UILabel!
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        redValue = Int(sender.value)
        redText.text = "R: \(redValue)"
        changeBackgroundColor()
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        greenValue = Int(sender.value)
        greenText.text = "G: \(greenValue)"
        changeBackgroundColor()
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        blueValue = Int(sender.value)
        blueText.text = "B: \(blueValue)"
        changeBackgroundColor()
    }
    
    
    func changeBackgroundColor(){
        view.backgroundColor = UIColor(red: CGFloat(redValue)/255, green: CGFloat(greenValue)/255, blue: CGFloat(blueValue)/255, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

