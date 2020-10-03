
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
        valueSelectedLabel.text = "\(nineballValueSelected)"
    
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return valueArray[row]
    }
    
    //share link pop-up
    @IBAction func shareAppButtonPressed(_ sender: UIButton) {
        
        let share = UIActivityViewController(activityItems: [url], applicationActivities: nil)
              present(share, animated: true)
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        valuePicker.dataSource = self
        valuePicker.delegate = self
        player1NameTextField.delegate = self
        player2NameTextField.delegate = self
        
        
      
    }
    
    
    var url = "https://apps.apple.com/us/app/runnin-out/id1534262908"
    
    let valueArray = ["3", "2"]
    var nineballValueSelected = 3

    
    var player1win = 0
    var player2win = 0
    
    @IBOutlet weak var player1NameTextField: UITextField!
    @IBOutlet weak var player2NameTextField: UITextField!
    
    @IBOutlet weak var player1PointsNeeded: UILabel!
    @IBOutlet weak var player2PointsNeeded: UILabel!
    
    @IBOutlet weak var startBtn: UIButton!
    
    
    @IBOutlet weak var valuePicker: UIPickerView!
    @IBOutlet weak var valueSelectedLabel: UILabel!
    
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
            playSound(soundFileName: "sound1")
        }
        
        
                
    }
    
    func playSound(soundFileName: String)
    {
        if let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
            
        {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
    }
    
    
    func showAlertforStart() {
        
        let alert = UIAlertController(title: "Alert", message: "Please enter a score from the slider for both players", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .cancel))

        present(alert, animated: true)
        
        playSound(soundFileName: "Ping")
       
            
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
