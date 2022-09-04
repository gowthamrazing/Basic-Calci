//
//  ViewController.swift
//  CalciBasic
//
//  Created by Gowtham Kalaiselvan on 4/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputOne: UITextField!
    
    @IBOutlet weak var inputTwo: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func addSubmit(_ sender: Any) {
        
        // normalAddition()
        
        addWithIfLet()
        
    }
    
    @IBAction func subtractSubmit(_ sender: Any) {
        
        subWithIfLet()
    }
    
    @IBAction func multiplySubmit(_ sender: Any) {
        
        multiplyWithIfLet()
    }
    
    @IBAction func divideSubmit(_ sender: Any) {
        
        divideWithIfLet()
    }
    
    
    
}

extension ViewController {
    
    func normalAddition() {
        
        let firstNumber = Int(inputOne.text!) ?? 0
        let secondNumber = Int(inputTwo.text!) ?? 0
        
        result = firstNumber + secondNumber
        print(result)
        
        resultLabel.text = String(result)
        
    }
    
    func addWithIfLet() {
        if let firstNumber = Int(inputOne.text!){
            if let secondNumber = Int(inputTwo.text!){
                
                result = firstNumber + secondNumber
                
                resultLabel.text = String(result)
            }else {
                resultLabel.text = "Please give a valid Input"
            }
        } else {
            
            resultLabel.text = "Please give a valid Input"
        }
    }
    
    func subWithIfLet() {
        
        if let firstNumber = Int(inputOne.text!){
            if let secondNumber = Int(inputTwo.text!){
                
                result = firstNumber - secondNumber
                
                resultLabel.text = String(result)
            }else {
                resultLabel.text = "Please give a valid Input"
            }
        } else {
            
            resultLabel.text = "Please give a valid Input"
        }
        
    }
    
    
    func multiplyWithIfLet() {
        if let firstNumber = Int(inputOne.text!){
            if let secondNumber = Int(inputTwo.text!){
                
                result = firstNumber * secondNumber
                
                resultLabel.text = String(result)
            }else {
                resultLabel.text = "Please give a valid Input"
            }
        } else {
            
            resultLabel.text = "Please give a valid Input"
        }
    }
    
    func divideWithIfLet() {
        if let firstNumber = Int(inputOne.text!){
            if let secondNumber = Int(inputTwo.text!){
                
                result = firstNumber / secondNumber
                
                resultLabel.text = String(result)
            }else {
                resultLabel.text = "Please give a valid Input"
            }
        } else {
            
            resultLabel.text = "Please give a valid Input"
        }
    }
    
}

