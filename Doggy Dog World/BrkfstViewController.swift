//
//  BrkfstViewController.swift
//  Doggy Dog World
//
//  Created by samuelhan on 1/28/18.
//  Copyright © 2018 Samuel Han. All rights reserved.
//

import UIKit

class BrkfstViewController: UIViewController {

    @IBOutlet weak var breakfastImage: UIImageView!
    @IBOutlet weak var dogText: UITextView!
    var owner: RegisterOwner!
    
    @IBAction func okayButton(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "brkToTable" {
            let taskTable = segue.destination as! TaskTableViewController
            taskTable.owner = owner
        }
        else if segue.identifier == "brkToFood" {
            print("On to the next!")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dogText.text = "\(owner.petname) is a \(owner.breed), so she needs \n\nTesting if this part works properly"
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
