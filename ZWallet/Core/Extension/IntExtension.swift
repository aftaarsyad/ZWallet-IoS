//
//  IntExtension.swift
//  ZWallet
//
//  Created by user215381 on 4/5/22.
//

import Foundation

public extension Int {
    func formatToIdr() -> String {
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "id_ID")
        formatter.groupingSeparator = "."
        formatter.numberStyle = .decimal
        
        if let formattedAmount = formatter.string(from: self as NSNumber) {
            return "Rp \(formattedAmount)"
        } else {
            return "Rp \(self)"
        }
    }
}
