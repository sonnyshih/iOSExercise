//
//  NewViewController.swift
//  HelloTabBarAgain
//
//  Created by sonny on 2020/6/4.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    var messageFromViewOne:String?
    
    @IBOutlet weak var myTextInput: UITextField!
    
    @IBAction func ok(_ sender: UIButton) {
        if let inputText = myTextInput.text {
            print("\(inputText)")
            
            myTextInput.text = ""
            myTextInput.resignFirstResponder()
            
            let firstViewController = self.tabBarController?.viewControllers?[0] as? ViewController
            
            firstViewController?.myLabel.text = inputText
            self.tabBarController?.selectedIndex = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTextInput.text = messageFromViewOne
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        myTextInput.becomeFirstResponder()
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
