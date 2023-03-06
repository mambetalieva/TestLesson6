//
//  StartViewController.swift
//  TestLesson6
//
//  Created by Каира on 7.03.2023.
//

import UIKit
import SnapKit

class StartViewController: UIViewController {
    
    let labelWelcome: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18)
        return label
    
    }()
    
    let  labelLogin: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 14)
        return label
    }()
    let emailLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    let emailTF: UITextField = {
        let tf = UITextField()
         tf.placeholder = " Email"
         tf.textAlignment = .left
         tf.layer.cornerRadius = 6
         tf.layer.borderColor = UIColor.black.cgColor
         tf.layer.borderWidth = 1
         return tf
     }()
    let passwordLabel: UILabel = {
        let psLabel = UILabel()
        psLabel.numberOfLines = 0
        psLabel.font = .systemFont(ofSize: 20)
        return psLabel
    
    }()
    let passwordTF: UITextField = {
        let tf = UITextField()
         tf.placeholder = " Password"
         tf.textAlignment = .left
         tf.layer.cornerRadius = 6
         tf.layer.borderColor = UIColor.black.cgColor
         tf.layer.borderWidth = 1
         return tf
     }()
    let lockImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .systemGray
        return image
    
    }()
    let buttonForgot: UIButton = {
       let forgotPS = UIButton()
        forgotPS.setTitle("Forgot password?", for: .normal)
        return forgotPS
    }()
    let loginButt: UIButton = {
       let butt = UIButton()
        butt.setTitle("Login", for: .normal)
        butt.layer.cornerRadius = 8
        butt.layer.borderWidth = 1
        butt.layer.borderColor = UIColor.black.cgColor
        butt.backgroundColor = .blue
        return butt
    }()
    let dontAcc: UILabel = {
        let labelAcc = UILabel()
        labelAcc.numberOfLines = 0
        return labelAcc
    }()
    let createButt: UIButton = {
       let create = UIButton()
        create.setTitle("Create now", for: .normal)
        return create
    }()
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        initAction()
    }
    private func initUI(){
        view.backgroundColor = .systemIndigo
        view.addSubview(labelWelcome)
        view.addSubview(labelLogin)
        view.addSubview(emailLabel)
        view.addSubview(emailTF)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTF)
        view.addSubview(lockImage)
        view.addSubview(buttonForgot)
        view.addSubview(loginButt)
        view.addSubview(dontAcc)
        view.addSubview(createButt)
        
        labelWelcome.text = " WELCOME "
        labelWelcome.textAlignment = .center
        labelLogin.text = " Login to your account"
        labelLogin.textAlignment = .left
        emailLabel.text =  "   Email"
        emailLabel.textAlignment = .left
        passwordLabel.text = "  Password"
        passwordLabel.textAlignment = .left
        dontAcc.text =  " Don't have account?"
        dontAcc.textAlignment = .left
        
        labelWelcome.snp.makeConstraints { make in
            make.width.equalTo(134)
            make.height.equalTo(42)
            make.top.equalTo(251)
            make.left.equalTo(121)
           
            
        }
        labelLogin.snp.makeConstraints { make in
            make.width.equalTo(219)
            make.height.equalTo(30)
            make.top.equalTo(287)
            make.left.equalTo(81)
            
        
       }
        emailLabel.snp.makeConstraints { make in
            make.width.equalTo(56)
            make.height.equalTo(27)
            make.top.equalTo(342)
            make.left.equalTo(30)
            make.right.equalTo(289)
           
           
       }
        emailTF.snp.makeConstraints { make in
            make.width.equalTo(315)
            make.height.equalTo(48)
            make.top.equalTo(375)
            make.left.equalTo(30)
            
      }
        passwordLabel.snp.makeConstraints { make in
            make.width.equalTo(99)
            make.height.equalTo(27)
            make.top.equalTo(429)
            make.left.equalTo(31)
           
        }
        passwordTF.snp.makeConstraints { make in
            make.width.equalTo(315)
            make.height.equalTo(48)
            make.top.equalTo(460)
            make.left.equalTo(30)
        }
        lockImage.snp.makeConstraints { make in
            make.width.equalTo(12)
            make.height.equalTo(10)
            make.top.equalTo(9)
            make.left.equalTo(30)
        }
        buttonForgot.snp.makeConstraints { make in
            make.width.equalTo(161)
            make.height.equalTo(24)
            make.top.equalTo(515)
            make.left.equalTo(184)
        }
        loginButt.snp.makeConstraints { make in
            make.width.equalTo(295)
            make.height.equalTo(48)
            make.top.equalTo(567)
            make.left.equalTo(40)
        }
        dontAcc.snp.makeConstraints { make in
            make.width.equalTo(174)
            make.height.equalTo(24)
            make.top.equalTo(629)
            make.left.equalTo(48)
        }
        createButt.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(24)
            make.top.equalTo(629)
            make.left.equalTo(227)
        }
}

private func initAction(){
createButt.addTarget(self,
                 action: #selector(login (_:)),
                 for: .touchUpInside)
}

@objc func login(_ sender: UIButton) {
let vc = SecondViewController()
vc.userNameValue = emailTF.text ?? "empty"
self.navigationController?.pushViewController(vc, animated: true)
}
    private func isTextFieldFiled(textField:  UITextField) -> Bool {
        guard let text = textField.text else { return false }
        
        if  text.isEmpty {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = "Need to fill"
            return false
        } else {
            return true
        }
    }

}
