//
//  LoginPresenterImpl.swift
//  ZWallet
//
//  Created by user215381 on 4/5/22.
//

import Foundation
class LoginPresenterImpl: LoginPresenterProtocol {
    let view: LoginView
    let interactor: LoginInteractor
    let router: LoginRouter
    
    init(view: LoginView, interactor: LoginInteractor, router: LoginRouter) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    func login(email: String, password: String) {
        self.interactor.postLoginData(email: email, password: password)
    }
}

extension LoginPresenterImpl: LoginInteractorOutput {
    func authenticationResult(isSuccess: Bool) {
        if isSuccess {
            self.router.navigateHome()
        }
        else {
            self.view.showError()
        }
    }
}
