//
//  SignInViewModel.swift
//  TemplateSignInMVVM
//
//  Created by vishnuprasadm on 17/07/25.
//

import Foundation
class SignInViewModel  {
    
    var delegate: SignInDelegate?
    
    var networkService : SignInNetworkService?
    init(networkService: SignInNetworkService? = nil) {
        self.networkService = networkService
    }
    func signIn(email: String, password: String, name: String) {
        let req = SignInRequest(name: name, email: email, password: password, avatar: "https://picsum.photos/800")
        
        self.networkService?.signIn(with: req, completion: { response, error in
            //  delegate?.getUserData(email:  , password:  , name:  )
            
           
        })
    }
    
    
    
}
