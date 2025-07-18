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
    let networkService: SignInNetworkService
    let viewModel: SignInViewModel

    init(networkService: SignInNetworkService ) {
        self.networkService = networkService
        self.viewModel = SignInViewModel(networkService: networkService)
        super.init(nibName: nil, bundle: nil)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
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

