//
//  String-Extention.swift
//  logInErrorHandling
//
//  Created by francois buisson on 16/09/17.
//  Copyright © 2017 dilipGurjar. All rights reserved.
//

import Foundation

extension String {
    
    var isValidEmail: Bool {
        let emailFormate = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormate)
        return emailPredicate.evaluate(with: self)
    }
}
