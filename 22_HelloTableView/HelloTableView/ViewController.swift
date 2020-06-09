//
//  ViewController.swift
//  HelloTableView
//
//  Created by sonny on 2020/6/9.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let fruitArray = ["apple", "banana", "mango", "watermelon"]
    let colorArray = ["red", "green", "blue"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return fruitArray.count
        } else {
            return colorArray.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell()
        
        // can reuse
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = fruitArray[indexPath.row]
        } else {
            cell.textLabel?.text = colorArray[indexPath.row]
        }
        
        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "fruit"
        } else {
            return "color"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

