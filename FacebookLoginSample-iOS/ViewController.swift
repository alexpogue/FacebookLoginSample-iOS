//
//  ViewController.swift
//  FacebookLoginSample-iOS
//
//  Created by Alex Pogue on 11/13/16.
//  Copyright © 2016 Alex Pogue. All rights reserved.
//

import UIKit
import FacebookLogin
import FBSDKLoginKit

class ViewController: UIViewController, LoginButtonDelegate {
    
    let loginButton = LoginButton(readPermissions: [ .publicProfile ])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (FBSDKAccessToken.current()) != nil {
            print("On load: user is logged in")
        }
        else {
            print("On load: user is logged out")
        }
        loginButton.center = view.center
        loginButton.delegate = self
        view.addSubview(loginButton)
    }
    
    func loginButtonDidCompleteLogin(_ loginButton: LoginButton, result: LoginResult) {
        switch result {
        case .success:
            if (FBSDKAccessToken.current()) != nil {
                print("User logged in")
            }
        case .cancelled:
            print("Canceled login")
        case .failed(let error):
            print("Error logging in: " + error.localizedDescription)
        }
    }
    
    public func loginButtonDidLogOut(_ loginButton: LoginButton) {
        print("User Logged Out")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
