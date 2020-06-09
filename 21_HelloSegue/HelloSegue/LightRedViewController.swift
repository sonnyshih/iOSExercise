//
//  LightRedViewController.swift
//  HelloSegue
//
//  Created by sonny on 2020/6/4.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

protocol LightRedViewControllerDelegate {
    func setColor(colorType: String)
}

class LightRedViewController: UIViewController,
UIPickerViewDataSource, UIPickerViewDelegate {
    let colorArray = ["red", "green", "blue"]
    
    var messageFromView:String?
    var delegate: LightRedViewControllerDelegate?
    
    @IBOutlet weak var myLabel: UILabel!

    @IBOutlet weak var myPickerView: UIPickerView!
    
    @IBAction func BackToView1(_ sender: UIButton) {
        
        let colorNumber = myPickerView.selectedRow(inComponent: 0)
        let color = colorArray[colorNumber]        
        delegate?.setColor(colorType: color)
        
        navigationController?.popViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = messageFromView
        myPickerView.dataSource = self
        myPickerView.delegate = self
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        colorArray.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorArray[row]
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
