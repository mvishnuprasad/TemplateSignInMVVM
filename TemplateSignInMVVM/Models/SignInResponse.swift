//
//  SignInResponse.swift
//  TemplateSignInMVVM
//
//  Created by vishnuprasadm on 17/07/25.
//

import Foundation
struct SignInResponse : Codable  {
    var name : String
    var email :String
    var password : String
   
    var avatar : String
    var role : String
    var id : Int
   
}
