//
//  SwitchViewController.swift
//  L5P24
//
//  Created by mac on 09/05/1440 AH.
//  Copyright © 1440 MOAHMMED. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {

    @IBOutlet weak var OutPout: UILabel!
    
    @IBAction func Switch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            OutPout.text = ""
        }
        else {
            OutPout.text = "ياولد انت ملقوف :)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

}
