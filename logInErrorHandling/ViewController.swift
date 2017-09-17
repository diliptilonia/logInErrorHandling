//
//  ViewController.swift
//  logInErrorHandling
//
//  Created by francois buisson on 16/09/17.
//  Copyright © 2017 dilipGurjar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    enum LogInErrors: Error {
        case IncompleForm
        case InvalidEmailId
        case ShortPasswordLenght
    }

    @IBOutlet weak var emailTextFiled: UITextField!
    @IBOutlet weak var passwordTextFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func logInButtonTapped(_ sender: UIButton) {
        do {
            try LogIn()
            
        } catch LogInErrors.IncompleForm {
            Alert.showBasic(title: "Incomplete", messange: "please check Form is not complete", vc: self)
        } catch LogInErrors.InvalidEmailId {
            Alert.showBasic(title: "Invalid Email Id", messange: "please make sure that email is well formate", vc: self)
        } catch LogInErrors.ShortPasswordLenght {
            Alert.showBasic(title: "Password Lenght", messange: "the password Lenght shoud me longer than 8 charaters", vc: self)
        } catch {
            Alert.showBasic(title: "Unable to Catch", messange: "There is error when attepting to log in ", vc: self)
        }
        
    }
    func LogIn() throws {
        let email = emailTextFiled.text!
        let password = passwordTextFiled.text!
        
        if email.isEmpty || password.isEmpty {
            throw LogInErrors.IncompleForm
        }
        
        if email.isValidEmail {
            throw LogInErrors.InvalidEmailId
        }
        
        if password.count < 8 {
            throw LogInErrors.ShortPasswordLenght
        }
    }


}

