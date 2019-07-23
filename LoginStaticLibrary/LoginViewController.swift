//
//  LoginViewController.swift
//  LoginStaticLibrary
//
//  Created by Anurag Ajwani on 23/07/2019.
//  Copyright © 2019 Anurag Ajwani. All rights reserved.
//

import UIKit

public func getLoginScreen(onLogin: @escaping ()->()) -> UIViewController {
    let bundlePath = Bundle.main.path(forResource: "LoginLibraryResourceBundle", ofType: "bundle")!
    let bundle = Bundle(path: bundlePath)!
    let loginViewController = LoginViewController(nibName: "LoginScreen", bundle: bundle)
    loginViewController.onLogin = onLogin
    return loginViewController
}

class LoginViewController: UIViewController {
    
    var onLogin: (() -> ())?

    @IBAction func onLoginTapped(_ sender: Any) {
        self.onLogin?()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
