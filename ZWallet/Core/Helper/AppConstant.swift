//
//  AppConstant.swift
//  ZWallet
//
//  Created by user215381 on 4/5/22.
//

import Foundation

public class AppConstant {
    public static var baseUrl: String {
        return Bundle.main.infoDictionary?["BASE_URL"] as? String ?? ""
    }
}
