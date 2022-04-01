//
//  AuthNetworkManagerImp.swift
//  ZWallet
//
//  Created by user215381 on 3/31/22.
//

import Foundation
import Moya

public class AuthNetworkManagerImpl : AuthNetworkManager {
    
    public init(){
        
    }
    
    public func login(email: String, password: String, completion: @escaping (LoginDataResponse?, Error?) -> ()) {
        let provider = MoyaProvider<AuthApi>()
        provider.request(.login(email: email, password: password)) { result in
            switch result {
            case .success(let res):
                let decoder = JSONDecoder()
                do {
                    let loginResponse = try
                    decoder.decode(LoginResponse.self, from: res.data)
                    completion(loginResponse.data, nil)
                } catch let error {
                    completion(nil, error)
                }
            case .failure(let error) :
                completion(nil, error)
            }
        }
    }
}
