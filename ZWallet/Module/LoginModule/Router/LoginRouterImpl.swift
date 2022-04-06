//
//  LoginRouterImpl.swift
//  ZWallet
//
//  Created by user215381 on 4/5/22.
//

import Foundation
import UIKit

public class LoginRouterImpl {
    
    public static func navigateToModule() {
        let vc = LoginsViewController(nibName: "LoginsViewController", bundle: nil)
        let networkManager = AuthNetworkManagerImpl()
        
        let router = LoginRouterImpl()
        let interactor = LoginInteractorImpl(networkManager: networkManager)
        let presenter = LoginPresenterImpl(view: vc, interactor: interactor, router: router)
        
        interactor.interactorOutput = presenter
        
        vc.presenter = presenter
        
        UIApplication.shared.windows.first?.rootViewController = vc
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
}

extension LoginRouterImpl: LoginRouter {
    func navigateHome() {
        NotificationCenter.default.post(name: Notification.Name("reloadRootView"), object: nil)
    }
}
