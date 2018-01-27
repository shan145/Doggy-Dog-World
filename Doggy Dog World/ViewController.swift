//
//  ViewController.swift
//  Doggy Dog World
//
//  Created by samuelhan on 1/27/18.
//  Copyright © 2018 Samuel Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.setBackground()
        
//        let registerButton = UIButton(frame: CGRect(x: 100, y: 500, width: 200, height: 50))
//        registerButton.titleLabel?.font = UIFont(name: "TimesNewRomanPSMT", size: 27.0)
//        registerButton.setTitle("Register", for: .normal)
//        registerButton.setTitleColor(UIColor.blue, for: .normal)
//        //registerButton.addTarget(self, action: #selector(registerPressed), for: .touchUpInside)
//        view.addSubview(registerButton)
//        // Do any additional setup after loading the view, typically from a nib.
//
//        let loginButton = UIButton(frame: CGRect(x: 100, y: 550, width: 200, height: 50))
//        loginButton.titleLabel?.font = UIFont(name: "TimesNewRomanPSMT", size: 27.0)
//        loginButton.setTitle("Log In", for: .normal)
//        loginButton.setTitleColor(UIColor.blue, for: .normal)
//        loginButton.addTarget(self, action: #selector(loginPressed), for: .touchUpInside)
//        view.addSubview(loginButton)
        
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
    }
    
    
//    @objc func loginPressed() {
//        navigationController?.pushViewController(LoginViewController(), animated: true)
//
//    }
//
//
//    func setBackground() {
//        let backgroundImage = UIImage(named: "cover2.png")
//        var imageView: UIImageView!
//        imageView = UIImageView(frame: view.bounds)
//        imageView.contentMode =  UIViewContentMode.scaleAspectFill
//        imageView.clipsToBounds = true
//        imageView.image = backgroundImage
//        //imageView.center = view.center
//        view.addSubview(imageView)
//        self.view.sendSubview(toBack: imageView)
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

