//
//  ViewController.swift
//  Fancy Text
//
//  Created by InfoSapex Limited on 9/10/19.
//  Copyright © 2019 Muiz Ahmed Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var shadow: UIButton!
    
    var fontsize: CGFloat = 30
    var state = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func enterText(_ sender: Any) {
        label.text = textField.text
        self.resignFirstResponder()
    }
    
    @IBAction func redBtn(_ sender: Any) {
        label.textColor = UIColor.red
    }
    
    @IBAction func greenBtn(_ sender: Any) {
        label.textColor = UIColor.green
    }
    
    @IBAction func blueBtn(_ sender: Any) {
        label.textColor = UIColor.blue
    }
    
    @IBAction func font_1Btn(_ sender: Any) {
        label.font = UIFont(name: "SugarstyleMillenial-Regular" , size:30)
    }
    
    @IBAction func font_2Btn(_ sender: Any) {
        label.font = UIFont(name: "MoonFlower" , size:fontsize)
    }
    
    @IBAction func font_3Btn(_ sender: Any) {
        label.font = UIFont(name: "LemonMilk" , size:fontsize)
    }
    
    @IBAction func font_4Btn(_ sender: Any) {
         label.font = UIFont(name: "Blacksword" , size:fontsize)
    }
    
    @IBAction func shadowBtn(_ sender: Any) {
        if(state == false){
            label.layer.shadowColor = UIColor.black.cgColor
            label.layer.shadowOffset = CGSize(width:2, height: 2)
            label.layer.shadowRadius = 2
            label.layer.shadowOpacity = 0.25
            
            state = true
        }else{
            label.layer.shadowOpacity = 0
            
            state = false
        }
    }
    
    @IBAction func smallBtn(_ sender: Any) {
        fontsize = 30
        label.font = label.font.withSize(fontsize)
    }
    
    @IBAction func mediumBtn(_ sender: Any) {
         fontsize = 50
         label.font = label.font.withSize(fontsize)
    }
    
    @IBAction func largeBtn(_ sender: Any) {
         fontsize = 80
         label.font = label.font.withSize(fontsize)
    }
    
}

