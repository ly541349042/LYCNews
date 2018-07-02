//
//  LYBaseViewController.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/8.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit
import ILLoginKit

import FirebaseUI
import Firebase
import FirebaseAuth

class LYBaseViewController: UIViewController {
    
    lazy var loginCoordinator: LoginCoordinator = {
        return LoginCoordinator(rootViewController: self)
    }()

    let authUI = FUIAuth.defaultAuthUI()

//    lazy var loginViewController: LYLoginViewController = {
//        let controller = LYLoginViewController()
//        controller.delegate = self
//        return controller
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func isLoggedIn() -> Bool {
        if let _ = Auth.auth().currentUser {
            return true
        } else {
            return false
        }
    }

    func showLogin() {
        authUI?.delegate = self
        let providers: [FUIAuthProvider] = [
            FUIGoogleAuth(),
            ]
        authUI?.providers = providers
        let authVC = authUI?.authViewController()
        self.present(authVC!, animated: true, completion: nil)
        //  maybe used
//        loginCoordinator.start(animated: true)
        //  maybe used in future.
        //        self.present(loginViewController, animated: true, completion: nil)
    }
}

//  maybe used in future.
//extension LYBaseViewController: LoginViewControllerDelegate {
//    func didSelectLogin(_ viewController: UIViewController, email: String, password: String) {
//        print("DID SELECT LOGIN; EMAIL = \(email); PASSWORD = \(password)")
////        loginViewController.dismiss(animated: true, completion: nil)
//    }
//
//    func didSelectForgotPassword(_ viewController: UIViewController) {
//        print("LOGIN DID SELECT FORGOT PASSWORD")
//    }
//
//    func loginDidSelectBack(_ viewController: UIViewController) {
//        print("LOGIN DID SELECT BACK")
//    }
//
//
//}

extension LYBaseViewController: FUIAuthDelegate {
    func authUI(_ authUI: FUIAuth, didSignInWith user: User?, error: Error?) {
        // handle user and error as necessary
        if let e = error {
            print("error! \(e.localizedDescription)")
            return
        }

        print("login!")

    }


}

