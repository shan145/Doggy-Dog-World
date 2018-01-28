//
//  EndBrkfstViewController.swift
//  Doggy Dog World
//
//  Created by samuelhan on 1/28/18.
//  Copyright © 2018 Samuel Han. All rights reserved.
//

import UIKit

class EndBrkfstViewController: UIViewController {

    @IBOutlet weak var backgroundPIc: UIImageView!
    @IBOutlet weak var dryFoodLabel: UILabel!
    @IBOutlet weak var wetFoodLabel: UILabel!
    @IBOutlet weak var dryFoodBox: UITextField!
    @IBOutlet weak var wetFoodBox: UITextField!
    @IBOutlet weak var measure1: UILabel!
    @IBOutlet weak var measure2: UILabel!
    @IBAction func finishButton(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
