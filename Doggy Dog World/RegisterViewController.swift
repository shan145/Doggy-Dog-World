//
//  RegisterViewController.swift
//  Doggy Dog World
//
//  Created by Suin Jung on 1/27/18.
//  Copyright © 2018 Samuel Han. All rights reserved.
//

import UIKit


class RegisterViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var breedSelected:String?
    var activityLevelSelected:String?
    
    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var username: UILabel!
    
    @IBOutlet weak var petName: UILabel!
    @IBOutlet weak var breed: UILabel!
    @IBOutlet weak var activityLevel: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var weight: UILabel!
    
    @IBOutlet weak var specialConditions: UILabel!
    @IBOutlet weak var registration: UILabel!
    
    @IBOutlet weak var userBox: UITextField!
    @IBOutlet weak var passBox: UITextField!
    @IBOutlet weak var petBox: UITextField!
    @IBOutlet weak var breedPicker: UIPickerView!
    
    @IBOutlet weak var ageBox: UITextField!
    @IBOutlet weak var weightBox: UITextField!
    
    @IBOutlet weak var activityPicker: UIPickerView!
    
    @IBOutlet weak var conditionsBox: UITextField!
    
    private var owners = [RegisterOwner]()
    
    @IBAction func registerButton(_ sender: UIButton) {
        let username = userBox.text ?? ""
        let password = passBox.text ?? ""
        let petname = petBox.text ?? ""
        let breed = breedSelected ?? ""
        let age = Int(ageBox.text ?? "")
        let weight = Int(weightBox.text ?? "")
        let activity = activityLevelSelected ?? ""
        let conditions = conditionsBox.text ?? ""
            if ((userBox.text?.isEmpty ?? true) || (passBox.text?.isEmpty ?? true) ||
                (petBox.text?.isEmpty ?? true) || (conditionsBox.text?.isEmpty ?? true) ||
                (ageBox.text?.isEmpty ?? true) || (weightBox.text?.isEmpty ?? true) ||
                (conditionsBox.text?.isEmpty ?? true) ||
                (breedSelected?.isEmpty ?? true) || (activityLevelSelected?.isEmpty ?? true)) {
                print("registerButton else reached")
            }
            else {
                
                if let id = SqlDB.instance.addOwner(cusername: username, cpass: password, cpetname: petname, cbreed: breed, c_age: age!, c_weight: weight!, cactivity_level: activityLevelSelected!, c_specialCond: conditions) {
                        
                    let owner = RegisterOwner(id: id, username: username, password: password, petname: petname, breed: breed, age: age!, weight: weight!, activity_level: activity, specialCond: conditions)
                    owners.append(owner)
                }
            }
    }
    

    var breeds: [String]!
    let arrayOfActivityLevel:[String] = ["Sedentary", "Light", "Moderate", "High Activity"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.breedPicker.delegate = self
        self.breedPicker.dataSource = self
        self.activityPicker.delegate = self
        self.activityPicker.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "registerSegue" {
            
            if ((userBox.text?.isEmpty ?? true) || (passBox.text?.isEmpty ?? true) ||
                (petBox.text?.isEmpty ?? true) || (conditionsBox.text?.isEmpty ?? true) ||
                (ageBox.text?.isEmpty ?? true) || (weightBox.text?.isEmpty ?? true) ||
                (conditionsBox.text?.isEmpty ?? true) ||
                (breedSelected?.isEmpty ?? true) || (activityLevelSelected?.isEmpty ?? true)) {
                
                let alert = UIAlertController(title: "No text", message: "Please Enter Text In All Boxes & Select", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                return false
            }
                
            else {
                return true
            }
        }
        // by default, transition
        return true
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == breedPicker {
           return breeds.count
        }
        else {
            return arrayOfActivityLevel.count
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == breedPicker {
            return breeds[row]
        }
        else {
            return arrayOfActivityLevel[row]
        }
    }
    
    
    // THIS LETS US RETRIEVE THE VALUE OF THE PICKER SELECTION
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == breedPicker {
            breedSelected = breeds[component]
        }
        else {
            activityLevelSelected = arrayOfActivityLevel[component]
        }
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
