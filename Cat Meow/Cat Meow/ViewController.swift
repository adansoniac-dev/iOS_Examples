//
//  ViewController.swift
//  Cat Meow
//
//  Created by Obinna Agumadu on 1/13/18.
//  Copyright © 2018 Obinna Agumadu. All rights reserved.
//

import UIKit
import AVFoundation
/*
 I also went into the "Build Phases" -> Link Binary With Libraries, added
 AVFoundation.framework
 */

class ViewController: UIViewController {

    @IBOutlet weak var meowLabel: UILabel!
    @IBOutlet weak var catButton: UIButton!
    
    var catSound: AVAudioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        meowLabel.isHidden = true
        catButton.imageView?.contentMode = .scaleAspectFit
        
        let soundFile = Bundle.main.path(forResource: "meow", ofType: "wav")
        
        do{
            try catSound = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundFile!))
            
        }
        
        catch {
            print(error)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func meow(_ sender: Any) {
        
        catSound.play()
        meowLabel.isHidden = false
        
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(hideLabel), userInfo: nil, repeats: false)
    }
    
    @objc func hideLabel() {
        
        meowLabel.isHidden = true
        
    }
    
}

