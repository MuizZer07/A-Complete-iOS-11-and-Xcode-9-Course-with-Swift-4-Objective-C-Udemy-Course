//
//  ViewController.swift
//  Traffic Light
//
//  Created by InfoSapex Limited on 24/10/19.
//  Copyright © 2019 Muiz Ahmed Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trafficLightImage: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    var startTimer = Timer()
    var scoreTimer = Timer()
    
    var timerInt = 0
    var scoreInt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButton(_ sender: Any) {
        if scoreInt == 0 {
            timerInt = 3
            trafficLightImage.image = UIImage(named: "TrafficLight")
            
            startTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            
            scoreLabel.text = String(scoreInt)
            startButton.isEnabled = false
            startButton.setTitle("", for: .normal)
        }else{
            scoreTimer.invalidate()
            scoreInt = 0
            startButton.setTitle("RESTART", for: .normal)
        }
    }
    
    @objc func updateTimer(){
        timerInt -= 1
        if timerInt == 2{
            trafficLightImage.image = UIImage(named: "trafficLight3")
        }else if timerInt == 1{
            trafficLightImage.image = UIImage(named: "trafficLight2")
        }else if timerInt == 0{
            trafficLightImage.image = UIImage(named: "trafficLight1")
            startTimer.invalidate()
            
            scoreTimer = Timer.scheduledTimer(timeInterval: 0.00001, target: self, selector: #selector(updateScoreTimer), userInfo: nil, repeats: true)
            
            startButton.isEnabled = true
            startButton.setTitle("STOP", for: .normal)
        }
        
    }
    
    @objc func updateScoreTimer(){
        scoreInt += 1
        scoreLabel.text = String(scoreInt)
    }
    
}

