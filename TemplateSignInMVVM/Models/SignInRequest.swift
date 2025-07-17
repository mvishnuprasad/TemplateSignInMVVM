//
//  SignInRequest.swift
//  TemplateSignInMVVM
//
//  Created by vishnuprasadm on 17/07/25.
//

import Foundation
class SignInRequest : Codable{
    var name : String
    var email :String
    var password : String
    var avatar : String
    init(name: String, email: String, password: String, avatar: String = "https://picsum.photos/800") {
        self.name = name
        self.email = email
        self.password = password
        self.avatar = avatar
    }
}
enum signInErrors : Error {
    case badURL
    
}
