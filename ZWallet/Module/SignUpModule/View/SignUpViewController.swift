//
//  SignUpViewController.swift
//  ZWallet
//
//  Created by user217095 on 3/31/22.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var textTitle: UILabel!
    @IBOutlet weak var textSignUp: UILabel!
    @IBOutlet weak var textDescSignUp: UILabel!
    
    @IBOutlet weak var imgUsername: UIImageView!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var underLineUsername: UIView!
    
    @IBOutlet weak var imgEmailSignUp: UIImageView!
    @IBOutlet weak var emailSignUpTF: UITextField!
    @IBOutlet weak var underLineEmailSignUp: UIView!
    
    @IBOutlet weak var imgPassSignUp: UIImageView!
    @IBOutlet weak var passSignUpTF: UITextField!
    @IBOutlet weak var underLinePassSignUp: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textTitle.font = NunitoFont.nunitoBold(sizeOf: 26)
        textSignUp.font = NunitoFont.nunitoBold(sizeOf: 24)
        textDescSignUp.font = NunitoFont.nunitoRegular(sizeOf: 16)
        
    }
}
