//
//  ViewController.swift
//  TigerCalcuator
//
//  Created by mac on 03/05/1440 AH.
//  Copyright © 1440 MOAHMMED. All rights reserved.
//

import UIKit

class CalculatorVC : UIViewController {
    
    
    @IBAction func AcButtonAction(_ sender: Any) {
        Brina.Restart()
        Label.text = "0"
    }
    
    
    @IBOutlet weak var Label: UILabel!
    
    let Brina = CalculatorBrain()
    
    
    @IBAction func NumButton(_ sender: UIButton) {
        if self.Label.text == "0" { self.Label.text = ""}
        
        self.Label.text = self.Label.text! + sender.titleLabel!.text!
        
    }
    
    
    
    @IBAction func OpButton(_ sender: UIButton) {
        
        Brina.Add(Number: Double(self.Label.text!)! , Op: Character (sender.titleLabel!.text!))
        self.Label.text = "0"
        if sender.titleLabel!.text == "=" {self.Label.text = Brina.Result() }
        
    }
    

}

