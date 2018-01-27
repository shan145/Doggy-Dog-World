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
    @IBOutlet weak var allergy: UILabel!
    @IBOutlet weak var specialMedication: UILabel!
    @IBOutlet weak var specialConditions: UILabel!
    @IBOutlet weak var registration: UILabel!
    
    @IBOutlet weak var userBox: UITextField!
    @IBOutlet weak var passBox: UITextField!
    @IBOutlet weak var petBox: UITextField!
    @IBOutlet weak var breedPicker: UIPickerView!
    
    @IBOutlet weak var ageBox: UITextField!
    @IBOutlet weak var weightBox: UITextField!
    
    @IBOutlet weak var activityPicker: UIPickerView!
    
    @IBOutlet weak var allergyBox: UITextField!
    
    @IBOutlet weak var medicationBox: UITextField!
    
    @IBOutlet weak var conditionsBox: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    let arrayOfBreed:[String] = ["Beagle", "Golden Retriever", "Bagel"]
    let arrayOfActivityLevel:[String] = ["Sedentary", "Light", "Moderate", "High Activity"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.breedPicker.delegate = self
        self.breedPicker.dataSource = self
        self.activityPicker.delegate = self
        self.activityPicker.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == breedPicker {
            return arrayOfBreed.count
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
            return arrayOfBreed[row]
        }
        else {
            return arrayOfActivityLevel[row]
        }
    }
    
    
    // THIS LETS US RETRIEVE THE VALUE OF THE PICKER SELECTION
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == breedPicker {
            breedSelected = arrayOfBreed[component]
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
