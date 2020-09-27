//
//  selectorVCViewController.swift
//  HouseNineBallScorer
//
//  Created by skwong on 9/26/20.
//  Copyright © 2020 skwong. All rights reserved.
//

import UIKit

class selectorVCViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return valueArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        nineballValueSelected = Int(valueArray[row])!
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return valueArray[row]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        valuePicker.dataSource = self
        valuePicker.delegate = self
        
    }
    
    let valueArray = ["3", "2"]
    var nineballValueSelected = 2
    
    var player1win = 0
    var player2win = 0
    
    @IBOutlet weak var player1PointsNeeded: UILabel!
    @IBOutlet weak var player2PointsNeeded: UILabel!
    
    
    
    @IBOutlet weak var valuePicker: UIPickerView!
    
    @IBAction func player1Slider(_ sender: UISlider) {
        
        player1PointsNeeded.text = String(format: "%.0f", sender.value)
        player1win = Int(sender.value)
        
       
    

    }
    
    
    
    
    @IBAction func player2Slider(_ sender: UISlider) {
        
        player2PointsNeeded.text = String(format: "%.0f", sender.value)
        player2win = Int(sender.value)
    }
    
    
    @IBAction func startBtnPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToGame", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ViewController
        destinationVC.nineballValue = nineballValueSelected
        print(nineballValueSelected)
        
    }
    
    
    
    
}
