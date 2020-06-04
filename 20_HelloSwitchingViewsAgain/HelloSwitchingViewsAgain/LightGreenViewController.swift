//
//  LightGreenViewController.swift
//  HelloSwitchingViewsAgain
//
//  Created by sonny on 2020/6/4.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class LightGreenViewController: UIViewController {

    
    @IBAction func backToView2(_ sender: UIButton) {
        // if using present
        dismiss(animated: true, completion: nil)
        
        // back to prev view
        //self.navigationController?.popViewController(animated: true)
        
        // back to root view
        //self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
