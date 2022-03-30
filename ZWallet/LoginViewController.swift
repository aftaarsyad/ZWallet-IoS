import UIKit

class LoginViewController: UIViewController {

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
        textTitle.font = NunitoFonts.nunitoBold(sizeOf: 26)
        textLogin.font = NunitoFonts.nunitoBold(sizeOf: 24)
        textDescLogin.font = NunitoFonts.nunitoRegular(sizeOf: 16)
    }
    
    @IBAction func btnForgotPass(_ sender: Any) {
    }
    
    @IBAction func btnLoginAction(_ sender: Any) {
//        let email: String = emailTF.text ?? ""
//        let password: String = passTF.text ?? ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.imgEmail.image = UIImage(systemName: "envelope.fill")
        self.underLineEmail.backgroundColor = .blue
        
        self.imgPass.image = UIImage(systemName: "lock.fill")
        self.underLinePass.backgroundColor = .blue    }
}

//extension LoginViewController : UITextFieldDelegate {
//    private func handlingTextField(_ textField: UITextField) {
//        if textField == emailTF {
//            imgEmail.image = UIImage(systemName: "envelope.fill")
//            underLineEmail.backgroundColor = .blue
//        } else if textField == passTF {
//            imgPass.image = UIImage(systemName: "lock.fill")
//            underLinePass.backgroundColor = .blue
//        }
//    }
//
//    private func handlingEmptyTextField(_ textField: UITextField) {
//        if textField == emailTF && textField.text == "" {
//            imgEmail.image = UIImage(systemName: "envelope")
//            underLineEmail.backgroundColor = .gray
//        } else if textField == passTF && textField.text == "" {
//            imgPass.image = UIImage(systemName: "lock")
//            underLinePass.backgroundColor = .gray
//        }
//    }
//
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        handlingTextField(textField)
//    }
//
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        handlingEmptyTextField(textField)
//    }
//}



enum NunitoFonts {
    static func nunitoRegular(sizeOf size: CGFloat) -> UIFont? {
        UIFont(name: "NunitoSans-Regular", size: size)
    }
    static func nunitoBold(sizeOf size: CGFloat) -> UIFont? {
        UIFont(name: "NunitoSans-Bold", size: size)
    }
}
