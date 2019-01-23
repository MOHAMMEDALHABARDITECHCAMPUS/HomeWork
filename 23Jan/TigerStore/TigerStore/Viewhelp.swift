//
//  Viewhelp.swift
//  TigerStore
//
//  Created by mac on 25/02/1440 AH.
//  Copyright © 1440 MOAHMMED. All rights reserved.
//

import UIKit

class Viewhelp: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
   
    
    @IBAction func WhatsApp(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://api.whatsapp.com/send?phone=966564466511")! as URL, options: [:], completionHandler: nil )
    }
    
}
