//
//  ViewController.swift
//  Fact Bank
//
//  Created by InfoSapex Limited on 26/10/19.
//  Copyright © 2019 Muiz Ahmed Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var brainBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func randomFacts(_ sender: Any) {
        
        let array = [
            """
                German chocolate cake is named after a
                guy named Sam German, not the country.
            """,
            """
                Almost as many people were killed by
                guillotine in Nazi Germany as in the
                French Revolution.
            """,
            """
                The creature that kills the most people
                every year isn't snakes, sharks, or even
                other humans — it's the mosquito.
            """,
            """
                The Sun City Poms is a cheerleading squad
                in Arizona that only people 55 or older
                can join.
            """,
            """
                "What in tarnation?" is literally just
                another way of saying, "What the hell?"
            """,
            """
                Chainsaws, the horror-movie murder weapon
                of choice, were invented for aid in
                childbirth
            """,
            """
                There's an island in Japan you can visit
                that's inhabited only by friendly bunnies.
            """,
            """
                There are actually more public libraries
                in the US than McDonald's.
            """,
            """
                In 1518, a “dancing plague” took over the
                town of Strasbourg, France.
            """,
            """
                Before the invention of color TV, 75% of
                people said they dreamed in black and
                white. Today, only 12% do.
            """
        ]
        
        let min : UInt32 = 0
        let max : UInt32 = 10
        
        let randomNumber = Int(arc4random_uniform(max - min) + min)
        label.text = array[randomNumber]
    }
    

}

