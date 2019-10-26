//
//  ViewController.swift
//  Tap Me Fast
//
//  Created by InfoSapex Limited on 26/10/19.
//  Copyright © 2019 Muiz Ahmed Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var startBtn: UIButton!
    
    var timer = Timer()
    
    var timeInt = 10
    var scoreInt = 0
    var gameInt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func startGame(_ sender: Any) {
        if gameInt == 0{
            scoreInt = 0
            scoreLabel.text = String(scoreInt)
            startBtn.setTitle("TAP", for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            gameInt = 1
        }else{
            scoreInt += 1
            scoreLabel.text = String(scoreInt)
        }
    }
    
    @objc func updateTimer(){
        timeInt -= 1
        timeLabel.text = String(timeInt)
        if timeInt == 0{
            timer.invalidate()
            gameInt = 0
            startBtn.setTitle("START", for: .normal)
            timeInt = 10
            timeLabel.text = String(timeInt)
        }
    }
    
}

