//
//  ViewController.swift
//  Simple Button
//
//  Created by Obinna Agumadu on 1/14/18.
//  Copyright © 2018 Obinna Agumadu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var nameTextbox: UITextField!
    @IBOutlet weak var myNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myNameLabel.isHidden = true
     
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitButton(_ sender: Any) {
        
        myNameLabel.isHidden = false
        myNameLabel.text = "Hi, " + nameTextbox.text!
        
    }
    

}

