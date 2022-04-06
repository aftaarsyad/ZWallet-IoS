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
    @IBOutlet weak var eyeTogglebtn: UIImageView!
    
    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var errorMessage: UILabel!
    
    var presenter: LoginPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewContent.layer.cornerRadius = 20
        viewContent.layer.masksToBounds = true
        textTitle.font = NunitoFont.nunitoBold(sizeOf: 26)
        textLogin.font = NunitoFont.nunitoBold(sizeOf: 24)
        textDescLogin.font = NunitoFont.nunitoRegular(sizeOf: 16)
        emailTF.delegate = self
        passTF.delegate = self
        errorMessage.text = ""
    }

    @IBAction func loginAction(_ sender: Any) {
        let email: String = emailTF.text ?? ""
        let password: String = passTF.text ?? ""
        
        self.presenter?.login(email: email, password: password)
    }
    //    @IBAction func eyeToggle(_ sender: Any) {
//        (sender as! UIButton).isSelected = !(sender as! UIButton).isSelected
//        if (sender as! UIButton).isSelected {
//            self.passTF.isSecureTextEntry = false
//            eyeTogglebtn.image = UIImage(systemName: "eye")
//        } else {
//            self.passTF.isSecureTextEntry = true
//            eyeTogglebtn.image = UIImage(systemName: "eye.slash")
//        }
//    }
    
}

extension LoginsViewController: LoginView {
    func showError() {
        imgEmail.image = UIImage(systemName: "envelope")?.withTintColor(.red, renderingMode: .alwaysOriginal)
        underLineEmail.backgroundColor = .red
        imgPass.image = UIImage(systemName: "lock")?.withTintColor(.red, renderingMode: .alwaysOriginal)
        underLinePass.backgroundColor = .red
        errorMessage.text = "Username atau password salah"
        errorMessage.textColor = .red
    }
}

extension LoginsViewController : UITextFieldDelegate {
    private func handlingTextField(_ textField: UITextField) {
        if textField == emailTF {
            imgEmail.image = UIImage(systemName: "envelope")?.withTintColor(.blue, renderingMode: .alwaysOriginal)
            underLineEmail.backgroundColor = .blue
        } else if textField == passTF {
            imgPass.image = UIImage(systemName: "lock")?.withTintColor(.blue, renderingMode: .alwaysOriginal)
            underLinePass.backgroundColor = .blue
        }
    }

    private func handlingEmptyTextField(_ textField: UITextField) {
        if textField == emailTF && textField.text == "" {
            imgEmail.image = UIImage(systemName: "envelope")
            underLineEmail.backgroundColor = .gray
        } else if textField == passTF && textField.text == "" {
            imgPass.image = UIImage(systemName: "lock")
            underLinePass.backgroundColor = .gray
        }
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        handlingTextField(textField)
        errorMessage.text = ""
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        handlingEmptyTextField(textField)
        errorMessage.text = ""
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
