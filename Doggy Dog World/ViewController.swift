//
//  ViewController.swift
//  Doggy Dog World
//
//  Created by samuelhan on 1/27/18.
//  Copyright © 2018 Samuel Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    static let control = ViewController()
    var breeds: [String]!
    
    func capitalizeFirst(arrayOfStrings: [String]) -> [String] {
        var newArray: [String] = []
        for str in arrayOfStrings {
            newArray.append(str.capitalized)
        }
        return newArray
    }
    
    func setBreed() {
        guard let breedUrl = URL(string: "https://dog.ceo/api/breeds/list") else {return}
        URLSession.shared.dataTask(with: breedUrl) { (data, response
            , error) in
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                let dogs = try decoder.decode(BreedTypes.self, from: data)
                self.breeds = dogs.message
                print(self.breeds)
                
            } catch let err {
                print("Err", err)
            }
            }.resume()
    }
    
    @IBOutlet weak var backgroundImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setBreed()
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startToRegister" {
            let destin = segue.destination as! RegisterViewController
            destin.breeds = capitalizeFirst(arrayOfStrings: breeds)
        }
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        print("Register pressed")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

