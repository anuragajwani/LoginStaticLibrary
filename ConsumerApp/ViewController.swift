//
//  ViewController.swift
//  ConsumerApp
//
//  Created by Anurag Ajwani on 23/07/2019.
//  Copyright © 2019 Anurag Ajwani. All rights reserved.
//

import UIKit
import LoginStaticLibrary

class ViewController: UIViewController {

    @IBAction func onSignInTapped(_ sender: Any) {
        let loginViewController = getLoginScreen(onLogin: {
            self.dismiss(animated: true, completion: nil)
        })
        self.present(loginViewController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

