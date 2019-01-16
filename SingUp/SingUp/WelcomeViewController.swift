//
//  WelcomeViewController.swift
//  SingUp
//
//  Created by mac on 10/05/1440 AH.
//  Copyright © 1440 MOAHMMED. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var LaWelcome: UILabel!
    
    var userName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        LaWelcome.text = "Welcome \(userName)"
        // Do any additional setup after loading the view.
    }

}
