//
//  AuthNetworkManager.swift
//  ZWallet
//
//  Created by user215381 on 3/31/22.
//

import Foundation

public protocol AuthNetworkManager {
    func login(email : String, password : String, completion: @escaping(LoginDataResponse?, Error?) -> ())
}
