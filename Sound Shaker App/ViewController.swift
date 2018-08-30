//
//  ViewController.swift
//  Sound Shaker App
//
//  Created by Андрей Понамарчук on 30.08.2018.
//  Copyright © 2018 Андрей Понамарчук. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    let soundsNames = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            let randomSoundName = arc4random_uniform(10)
            let soundPath = Bundle.main.path(forResource: String(randomSoundName), ofType: "mp3")
            do {
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundPath!))
            } catch {
                //errors
            }
            player.play()
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

