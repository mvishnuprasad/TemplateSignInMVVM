//
//  ViewController.swift
//  TemplateSignInMVVM
//
//  Created by vishnuprasadm on 17/07/25.
//

import UIKit

class ViewController: UIViewController, SignInDelegate {
    func getUserData(email: String, password: String, name: String) {
        print("\(email)")
    }
    
    private var viewModel = SignInViewModel(networkService: SignInNetworkService())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        
    }
    
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    @IBAction func signINPressed(_ sender: Any) {
        
        viewModel.signIn(email: emailField.text ?? "", password: passwordField.text ?? "", name: nameField.text ?? "")
        
    }
}

