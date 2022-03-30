//
//  LoginsViewController.swift
//  ZWallet
//
//  Created by user217095 on 3/30/22.
//

import UIKit

class LoginsViewController: UIViewController {

    @IBOutlet weak var textTitle: UILabel!
    @IBOutlet weak var textLogin: UILabel!
    @IBOutlet weak var textDescLogin: UILabel!
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    
    @IBOutlet weak var imgEmail: UIImageView!
    @IBOutlet weak var imgPass: UIImageView!
    
    @IBOutlet weak var underLineEmail: UIView!
    @IBOutlet weak var underLinePass: UIView!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textTitle.font = NunitoFont.nunitoBold(sizeOf: 26)
        textLogin.font = NunitoFont.nunitoBold(sizeOf: 24)
        textDescLogin.font = NunitoFont.nunitoRegular(sizeOf: 16)
    }
}

enum NunitoFont {
    static func nunitoRegular(sizeOf size: CGFloat) -> UIFont? {
        UIFont(name: "NunitoSans-Regular", size: size)
    }
    static func nunitoBold(sizeOf size: CGFloat) -> UIFont? {
        UIFont(name: "NunitoSans-Bold", size: size)
    }
}
