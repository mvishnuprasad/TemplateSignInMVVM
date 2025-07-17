//
//  SignInDelegate.swift
//  TemplateSignInMVVM
//
//  Created by vishnuprasadm on 17/07/25.
//

import Foundation
protocol SignInDelegate {
    func getUserData(email: String, password: String, name: String)
}
