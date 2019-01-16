//
//  SwitchViewController.swift
//  SingUp
//
//  Created by mac on 10/05/1440 AH.
//  Copyright © 1440 MOAHMMED. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {
    
    
    @IBOutlet weak var Output: UILabel!
    
    @IBAction func Switch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            Output.text = ""
        }
        else {
            Output.text = "وش تدور هاه؟ طفه :)"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
