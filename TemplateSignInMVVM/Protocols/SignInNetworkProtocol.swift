//
//  SignInNetworkProtocol.swift
//  TemplateSignInMVVM
//
//  Created by vishnuprasadm on 17/07/25.
//

import Foundation
protocol SignInNetworkProtocol {
    func signIn(with request: SignInRequest, completion : @escaping (_ response : SignInResponse? ,_ error : Error?)->Void)
}
