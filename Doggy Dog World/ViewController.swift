//
//  ViewController.swift
//  Doggy Dog World
//
//  Created by samuelhan on 1/27/18.
//  Copyright © 2018 Samuel Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setBackground()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setBackground() {
        let background = UIImage(named: "cover2.png")
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        //imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

