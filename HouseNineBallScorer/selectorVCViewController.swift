
//
//  selectorVCViewController.swift
//  HouseNineBallScorer
//
//  Created by skwong on 9/26/20.
//  Copyright © 2020 skwong. All rights reserved.
//

import UIKit
import AVFoundation

class selectorVCViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    //Function to remove keyboard when touching outside the keyboard area
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //Function to remove keyboard using Return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return (true)

    }
    
    //Picker View functions
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
        player1NameTextField.delegate = self
        player2NameTextField.delegate = self
        
        
        
    }
    
    let valueArray = ["3", "2"]
    var nineballValueSelected = 3

    
    var player1win = 0
    var player2win = 0
    
    @IBOutlet weak var player1NameTextField: UITextField!
    @IBOutlet weak var player2NameTextField: UITextField!
    
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
        
        if player1PointsNeeded.text == "00" {
            showAlertforStart()
          
        }
    
        if player2PointsNeeded.text == "00" {
            showAlertforStart()
            
        }
      
        else {
        performSegue(withIdentifier: "goToGame", sender: self)
        }
                
    }
    
    
    func showAlertforStart() {
        
        let alert = UIAlertController(title: "Alert", message: "Please enter a score from the slider for both players", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .cancel))

        present(alert, animated: true)
            
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ViewController
        destinationVC.nineballValue = nineballValueSelected
                
        destinationVC.player1Name = player1NameTextField.text!
        destinationVC.player2Name = player2NameTextField.text!
        
        destinationVC.player1PointsToWin = Int(player1PointsNeeded.text!)!
        destinationVC.player2PointsToWin = Int(player2PointsNeeded.text!)!
        
        destinationVC.player1RemainderScore = Int(player1PointsNeeded.text!)!
        destinationVC.player2RemainderScore = Int(player2PointsNeeded.text!)!

        
        print(player1PointsNeeded.text!)
        
        
        
        
    }
    
    
    
    
}
