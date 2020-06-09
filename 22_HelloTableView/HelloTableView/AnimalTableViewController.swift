//
//  AnimalTableViewController.swift
//  HelloTableView
//
//  Created by sonny on 2020/6/9.
//  Copyright © 2020 sonny. All rights reserved.
//

import UIKit

class AnimalTableViewController: UITableViewController {

    let animalArray = ["cat", "chicken", "dog", "elephant", "fox", "goat", "kangaroo", "monkey", "mouse", "penguin", "rabbit", "snail" ]
    
    // 上面隱藏狀態列
    //override var prefersStatusBarHidden: Bool {
    //    return true
    //}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animalArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /* 標準cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = animalArray[indexPath.row]
        cell.imageView?.image = UIImage(named: animalArray[indexPath.row])
        */
        
        // 客製化 cell
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SpecialTableViewCell {
            cell.specialLabel.text = animalArray[indexPath.row]
            cell.specialImageView.image = UIImage(named: animalArray[indexPath.row])
        
            return cell
            
        } else {
            let cell = UITableViewCell();
            cell.textLabel?.text = animalArray[indexPath.row]
            cell.imageView?.image = UIImage(named: animalArray[indexPath.row])
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetail", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let dvc = segue.destination as? DetailViewController
            let selectIndexPath = self.tableView.indexPathForSelectedRow
            if let selectedRow = selectIndexPath?.row {
               dvc?.infoFromViewOne = animalArray[selectedRow]
                dvc?.navigationItem.title = animalArray[selectedRow]
            }
            
            
        }
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
