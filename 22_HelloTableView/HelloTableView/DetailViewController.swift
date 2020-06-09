//
//  DetailViewController.swift
//  HelloTableView
//
//  Created by sonny on 2020/6/9.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var infoFromViewOne:String?
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.text = infoFromViewOne
        if let okFileName = infoFromViewOne {
            myImageView.image = UIImage(named: okFileName)
        }
        
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
