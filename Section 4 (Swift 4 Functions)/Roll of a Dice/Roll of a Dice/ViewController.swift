//
//  ViewController.swift
//  Roll of a Dice
//
//  Created by InfoSapex Limited on 26/10/19.
//  Copyright © 2019 Muiz Ahmed Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rollLabel: UILabel!
    @IBOutlet weak var diceImage: UIImageView!
    @IBOutlet weak var rollBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollAction(_ sender: Any) {
        
        let min : UInt32 = 1
        let max : UInt32 = 7
     
        let randomNumber = arc4random_uniform(max - min) + min
        rollLabel.text = String("Rolled a  \(randomNumber)")
        diceImage.image = UIImage(named: "Dice\(randomNumber)")
        }
}

