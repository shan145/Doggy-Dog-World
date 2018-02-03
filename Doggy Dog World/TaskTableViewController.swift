//
//  TaskTableViewController.swift
//  Doggy Dog World
//
//  Created by samuelhan on 1/27/18.
//  Copyright © 2018 Samuel Han. All rights reserved.
//

import UIKit

class TaskTableViewController: UITableViewController {

    var tasks = [Tasks]()
    var currentDateTime = Date()
    var owner: RegisterOwner!
    
    private func loadTasks() {
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .medium
        
        let photo1 = UIImage(named: "today")
        let photo2 = UIImage(named: "upcoming")
        let photo3 = UIImage(named: "dailychallenge")
        let photo4 = UIImage(named: "breakfast")
        let photo5 = UIImage(named: "treat")
        let photo6 = UIImage(named: "exercise")
        let photo7 = UIImage(named: "album")
        
        
        guard let task1 = Tasks(name: "\(dateFormatter.string(from: currentDateTime))", photo: photo1)
            else {
                fatalError("Unable to instantiate task1")
        }
        
        guard let task2 = Tasks(name: "Vet Feb. 6th", photo: photo2)
            else {
                fatalError("Unable to instantiate task2")
        }
        
        guard let task3 = Tasks(name: "Take a picture with \(owner.petname)!", photo: photo3)
            else {
                fatalError("Unable to instantiate task3")
        }
        
        
        guard let task4 = Tasks(name: "Breakfast", photo: photo4)
            else {
                fatalError("Unable to instantiate task2")
        }
        
        guard let task5 = Tasks(name: "Treat", photo: photo5)
            else {
                fatalError("Unable to instantiate task3")
        }
        
        guard let task6 = Tasks(name: "Exercise", photo: photo6)
            else {
                fatalError("Unable to instantiate task4")
        }
        
        guard let task7 = Tasks(name: "Photo Album", photo: photo7)
            else {
                fatalError("Unable to instantiate task7")
        }
        
        tasks += [task1, task2, task3, task4, task5, task6, task7]
        
    }
            
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTasks()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let task = tasks[indexPath.row]
        if task.name == "Breakfast" {
            print("Breakfast pressed")
            self.performSegue(withIdentifier: "yourSegue", sender: self)
        }
        else if task.name == "Take a picture with \(owner.petname)!" {
            print("Daily Challenge pressed")
            self.performSegue(withIdentifier: "dailySegue", sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "yourSegue") {
        // get a reference to the second view controller
            let brkfstViewController = segue.destination as! BrkfstViewController
            brkfstViewController.owner = owner
            
        }
        else if (segue.identifier == "dailySegue") {
            let dailViewController = segue.destination as! DailyViewController
            dailViewController.owner = owner
            
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "TaskTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TaskTableViewCell else {
            fatalError("Dequeued cell is not an instance of TaskTableViewCell")
        }
        
        let task = tasks[indexPath.row]
        
        cell.label.text = task.name
        cell.imageViewer.image = task.photo
        
        // Configure the cell...
        
        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
}
