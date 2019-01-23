//
//  ViewController.swift
//  TigerStore
//
//  Created by mac on 10/02/1440 AH.
//  Copyright © 1440 MOAHMMED. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func mywep(_ sender: UIButton) {
        
        UIApplication.shared.open(URL(string: "https://n5xx-store.com")! as URL, options: [:], completionHandler: nil )
    }
    
    
}
