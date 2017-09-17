//
//  Alert.swift
//  logInErrorHandling
//
//  Created by francois buisson on 16/09/17.
//  Copyright © 2017 dilipGurjar. All rights reserved.
//

import Foundation
import UIKit

class Alert {
    
    class func showBasic(title: String, messange: String, vc: UIViewController) {
        let alert = UIAlertController(title: title, message: messange, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        vc.present(alert, animated: true)
    }
}
