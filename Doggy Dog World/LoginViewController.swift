//
//  LoginViewController.swift
//  login
//
//  Created by Joseph Lee on 1/27/18.
//  Copyright © 2018 Joseph. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var userbox: UITextField!
    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var passbox: UITextField!
    @IBOutlet weak var image: UIImageView!
    
    var ownerInfo: RegisterOwner!
    
    @IBAction func enterButton(_ sender: UIButton) {
    
    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "loginSegue" {
            for owner in SqlDB.instance.getOwners() {
                if ((userbox.text == owner.username) && (passbox.text == owner.password)) {
                    ownerInfo = owner
                    return true
                }
            }
            let alert = UIAlertController(title: "Incorrect", message: "Please fill in All Boxes or Enter Appropriate Info", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginSegue" {
            let nextTable = segue.destination as! TaskTableViewController
            nextTable.owner = ownerInfo
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
