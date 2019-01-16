//
//  ViewController.swift
//  SingUp
//
//  Created by mac on 10/05/1440 AH.
//  Copyright © 1440 MOAHMMED. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var TextUserName: UITextField!
//        {
//        didSet {
//            TextUserName.delegate = self
//        }
//    }
    @IBOutlet weak var TextEmail: UITextField!
    @IBOutlet weak var TextPassword: UITextField!
    @IBOutlet weak var TextCnofirmPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldLayout(placeHolder: "Username", imageName: "user", txtField: TextUserName)
        textFieldLayout(placeHolder: "email", imageName: "email", txtField: TextEmail)
        textFieldLayout(placeHolder: "Password", imageName: "lock", txtField: TextPassword)
        textFieldLayout(placeHolder: "CnofirmPassword", imageName: "lock", txtField: TextCnofirmPassword)
        
//        TextUserName.placeholder = "UserName"
//        TextUserName.leftView = UIImageView(image: UIImage(named: "user"))
//        TextUserName.leftViewMode = .always
//        TextEmail.placeholder = "email"
//        TextEmail.leftView = UIImageView(image: UIImage(named: "email"))
//        TextEmail.leftViewMode = .always
//        TextPassword.placeholder = "Password"
//        TextPassword.leftView = UIImageView(image: UIImage(named: "lock"))
//        TextPassword.leftViewMode = .always
//        TextCnofirmPassword.placeholder = "CnofirmPassword"
//        TextCnofirmPassword.leftView = UIImageView(image: UIImage(named: "lock"))
//        TextCnofirmPassword.leftViewMode = .always
        
    }
    
    func textFieldLayout(placeHolder:String, imageName:String, txtField: UITextField){
        txtField.delegate = self
        txtField.placeholder = placeHolder
        txtField.leftView = UIImageView(image: UIImage(named: imageName))
        txtField.leftViewMode = .always
    }
    
    func IsEmailAddressValid(emailTestString:String) -> Bool {
        let emailRagEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTast = NSPredicate(format: "SELF MATCHES %@", emailRagEx)
        return emailTast.evaluate(with: emailTestString)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "GO_TO_WELCOME_PAGE"){
            let welcomeVC = segue.destination as! WelcomeViewController
            welcomeVC.userName = TextUserName.text!
        }
    }

    @IBAction func BtnSingUp(_ sender: Any) {
        if (TextUserName.text == "" || TextEmail.text == "" || TextPassword.text == "" || TextCnofirmPassword.text == "") {
            let alert = UIAlertController(title: "خطا", message: "ناسي لك فراغ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "فهمت", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
            else {
                self.performSegue(withIdentifier: "GO_TO_WELCOME_PAGE", sender: nil)
            }
        }
    }


extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (textField == TextEmail && TextEmail.text != nil) {
            if (!IsEmailAddressValid(emailTestString: TextEmail.text!)) {
                let alert = UIAlertController(title: "خطا", message: "ناسي الايميل ولا خطا", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "فهمت", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
}
