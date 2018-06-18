//
//  LYBaseViewController.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/8.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit
import ILLoginKit

class LYBaseViewController: UIViewController {

    lazy var loginCoordinator: LoginCoordinator = {
        return LoginCoordinator(rootViewController: self)
    }()

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

    func showLogin() {
        loginCoordinator.start(animated: true)
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


