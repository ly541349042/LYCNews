//
//  LoginCoordinator.swift
//  LYCNews
//
//  Created by LiYan on 2018/6/18.
//  Copyright © 2018年 iStack. All rights reserved.
//

import UIKit
import ILLoginKit

class LoginCoordinator: ILLoginKit.LoginCoordinator {

    override func start(animated: Bool = true) {
        configureAppearance()
        super.start(animated: animated)
    }

    override func finish(animated: Bool = true) {
        super.finish(animated: animated)
    }

    // Customize LoginKit. All properties have defaults, only set the ones you want.
    func configureAppearance() {
        // Customize the look with background & logo images
        configuration.backgroundImage = #imageLiteral(resourceName: "background")
        // mainLogoImage =
        // secondaryLogoImage =

        // Change colors
        configuration.tintColor = UIColor(red: 52.0/255.0, green: 152.0/255.0, blue: 219.0/255.0, alpha: 1)
        configuration.errorTintColor = UIColor(red: 253.0/255.0, green: 227.0/255.0, blue: 167.0/255.0, alpha: 1)

        // Change placeholder & button texts, useful for different marketing style or language.
        configuration.loginButtonText = "Sign In"
        configuration.signupButtonText = "Create Account"
        configuration.facebookButtonText = "Login with Facebook"
        configuration.forgotPasswordButtonText = "Forgot password?"
        configuration.recoverPasswordButtonText = "Recover"
        configuration.namePlaceholder = "Name"
        configuration.emailPlaceholder = "E-Mail"
        configuration.passwordPlaceholder = "Password!"
        configuration.repeatPasswordPlaceholder = "Confirm password!"
    }

    // MARK: - Completion Callbacks
    override func login(email: String, password: String) {
        // Handle login via your API
        print("Login with: email =\(email) password = \(password)")
        //  lyrequest.login(xxxxx)
//        finish(animated: true)
    }

    override func signup(name: String, email: String, password: String) {
        // Handle signup via your API
        print("Signup with: name = \(name) email =\(email) password = \(password)")
        //  lyrequest.signup(xxxxx)
    }

    override func enterWithFacebook(profile: FacebookProfile) {
        // Handle Facebook login/signup via your API
        print("Login/Signup via Facebook with: FB profile =\(profile)")

    }

    override func recoverPassword(email: String) {
        // Handle password recovery via your API
        print("Recover password with: email =\(email)")
    }
}

enum Settings {

    static let defaultLoginConfig = DefaultConfiguration(backgroundImage: #imageLiteral(resourceName: "background"),
                                                         tintColor: UIColor(red: 52.0/255.0, green: 152.0/255.0, blue: 219.0/255.0, alpha: 1),
                                                         errorTintColor: UIColor(red: 253.0/255.0, green: 227.0/255.0, blue: 167.0/255.0, alpha: 1),
                                                         signupButtonText: "Create Account",
                                                         loginButtonText: "Sign In",
                                                         facebookButtonText: "Login with Facebook",
                                                         forgotPasswordButtonText: "Forgot password?",
                                                         recoverPasswordButtonText: "Recover",
                                                         emailPlaceholder: "E-Mail",
                                                         passwordPlaceholder: "Password!",
                                                         repeatPasswordPlaceholder: "Confirm password!",
                                                         namePlaceholder: "Name",
                                                         shouldShowSignupButton: true,
                                                         shouldShowLoginButton: true,
                                                         shouldShowFacebookButton: true,
                                                         shouldShowForgotPassword: true)

}
