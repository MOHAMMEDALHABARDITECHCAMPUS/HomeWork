//
//  LastViewController.swift
//  L5P24
//
//  Created by mac on 09/05/1440 AH.
//  Copyright © 1440 MOAHMMED. All rights reserved.
//

import UIKit

class LastViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Alert(_ sender: Any) {
        let alert = UIAlertController(title: "You", message: "Please Help Me To Choose", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "cancel", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    

}
