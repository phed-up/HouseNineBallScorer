//
//  selectorVCViewController.swift
//  HouseNineBallScorer
//
//  Created by skwong on 9/26/20.
//  Copyright © 2020 skwong. All rights reserved.
//

import UIKit

class selectorVCViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var player1win = 0
    var player2win = 0
    
    @IBOutlet weak var player1PointsNeeded: UILabel!
    @IBOutlet weak var player2PointsNeeded: UILabel!
    
    
    
    
    @IBAction func player1Slider(_ sender: UISlider) {
        
        player1PointsNeeded.text = String(format: "%.0f", sender.value)
        player1win = Int(sender.value)
        
       
    

    }
    
    
    
    
    @IBAction func player2Slider(_ sender: UISlider) {
        
        player2PointsNeeded.text = String(format: "%.0f", sender.value)
        player2win = Int(sender.value)
    }
    
}
