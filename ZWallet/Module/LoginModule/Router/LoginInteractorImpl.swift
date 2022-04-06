//
//  LoginInteractorImpl.swift
//  ZWallet
//
//  Created by user215381 on 4/5/22.
//

import Foundation

class LoginInteractorImpl: LoginInteractor {
    var interactorOutput : LoginInteractorOutput?
    let authNetworkManager : AuthNetworkManager
    
    init(networkManager : AuthNetworkManager) {
        self.authNetworkManager = networkManager
    }
    
    func postLoginData(email: String, password: String) {
        self.authNetworkManager.login(email: email, password: password) { data, error in
            if let loginData = data {
                UserDefaultHelper.shared.set(key: .userToken, value: loginData.token)
                self.interactorOutput?.authenticationResult(isSuccess: true)
            } else {
                self.interactorOutput?.authenticationResult(isSuccess: false)
            }
        }
    }
}
