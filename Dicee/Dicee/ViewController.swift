//
//  ViewController.swift
//  Dicee
//
//  Created by Obinna Agumadu on 1/15/18.
//  Copyright © 2018 Obinna Agumadu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0              // to contain random number generated between 1 & 6 for dice 1
    var randomDiceIndex2 : Int = 0              // to contain random number generated between 1 & 6 for dice 2
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    // array contains the name of dice images simulating sides of a die
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomDiceFaces()       // calls the function that sets images
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        randomDiceFaces()      // calls the function that sets images
        
    }
    
    func randomDiceFaces() {
        
        randomDiceIndex1 = Int(arc4random_uniform(6))          // creates random number between 1 & 6
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        // set image views randomly ...
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    // created this to work by shaking the phone
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        randomDiceFaces()
    
    }
    
}

