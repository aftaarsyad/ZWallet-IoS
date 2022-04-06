//
//  LoginInteractor.swift
//  ZWallet
//
//  Created by user215381 on 4/5/22.
//

import Foundation

protocol LoginInteractor {
    func postLoginData(email: String, password: String)
}
