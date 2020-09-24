//
//  FirstViewController.swift
//  ToDoList
//
//  Created by sonny on 2020/6/10.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    // var toDo = ["Buy iPhonex", "Go to GYM", "Write a blog post"]
    var toDo = UserDefaults.standard.stringArray(forKey: "todo") ?? [String] ()
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
        
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell =  tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = toDo[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.textLabel?.font = UIFont(name: "arial", size: 24)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            toDo.remove(at: indexPath.row)
            UserDefaults.standard.set(toDo, forKey: "todo")
            myTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return false;
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        print(toDo[indexPath.row])
        
        if let secondViewControll = tabBarController?.viewControllers?[1] as? SecondViewController {
            secondViewControll.infoFromViewOne = indexPath.row
        }
        
        tabBarController?.selectedIndex = 1
    }

}

