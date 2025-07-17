//
//  SignInNetworkService.swift
//  TemplateSignInMVVM
//
//  Created by vishnuprasadm on 17/07/25.
//

import Foundation
class SignInNetworkService : SignInNetworkProtocol{
    func signIn(with request: SignInRequest, completion: @escaping (SignInResponse?, (any Error)?) -> Void) {
        print("called \(request.name)")
        guard let url = URL(string: "https://api.escuelajs.co/api/v1/users/") else {return}
        var req = URLRequest(url: url)
        req.httpMethod = "POST"
        req.addValue("application/json", forHTTPHeaderField: "Content-Type")
        do {
                    let jsonData = try JSONEncoder().encode(request)
                   req.httpBody = jsonData
               } catch {
                   print("Encoding Error: \(error)")
                   completion(nil, error)
                   return
               }
        let task = URLSession.shared.dataTask(with: req, completionHandler: { data , response ,error in
            if let receivedData = data {
                if let jsonString = String(data: receivedData, encoding: .utf8) {
                    print("🔵 Raw JSON response: \(jsonString)")
                }
                do{
                    let data = try JSONDecoder().decode(SignInResponse.self, from: receivedData)
                   
                    completion(data, nil)
                    print("data\(data)")
                }catch{
                    print("Error \(error)")
                    completion(nil,signInErrors.badURL)
                }
            }else{
                print("Error \(error)")
            }
        })
        task.resume()
        
        
    }
    
    
    
    
}
