//
//  SecondViewController.swift
//  TestLesson6
//
//  Created by Каира on 7.03.2023.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    
    var userNameValue: String?
    
    let labelRegister: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 12)
        return label
        
    }()
    
    let  labelCreate: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 8)
        return label
    }()
    let userName: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    let userTF: UITextField = {
        let tf = UITextField()
        tf.placeholder = " Username"
        tf.textAlignment = .left
        tf.layer.cornerRadius = 6
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 1
        return tf
    }()
    let email: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    let emailTf: UITextField = {
        let tf = UITextField()
        tf.placeholder = " Email"
        tf.textAlignment = .left
        tf.layer.cornerRadius = 6
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 1
        return tf
    }()
    let mobNum: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    let mobNumTF: UITextField = {
        let tf = UITextField()
        tf.placeholder = " Mobile Number"
        tf.textAlignment = .left
        tf.layer.cornerRadius = 6
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 1
        return tf
    }()
    let password: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    let passTF: UITextField = {
        let tf = UITextField()
        tf.placeholder = " Password "
        tf.textAlignment = .left
        tf.layer.cornerRadius = 6
        tf.layer.borderColor = UIColor.black.cgColor
        tf.layer.borderWidth = 1
        return tf
    }()
    let loginSV: UIButton = {
        let butt = UIButton()
        butt.setTitle("Login", for: .normal)
        butt.layer.cornerRadius = 6
        butt.layer.borderWidth = 1
        butt.layer.borderColor = UIColor.black.cgColor
        butt.backgroundColor = .blue
        return butt
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        //guard let userNameValue = userNameValue else { return }
        initUI()
        initAction()
        
    }
    private func initUI() {
        view.backgroundColor = .purple
        view.addSubview(labelRegister)
        view.addSubview(labelCreate)
        view.addSubview(userName)
        view.addSubview(userTF)
        view.addSubview(email)
        view.addSubview(emailTf)
        view.addSubview(mobNum)
        view.addSubview(mobNumTF)
        view.addSubview(password)
        view.addSubview(passTF)
        view.addSubview(loginSV)
        
        
        
        labelRegister.text = " REGISTER "
        labelRegister.textAlignment = .center
        labelCreate.text = " Create new account "
        labelCreate.textAlignment = .center
        userName.text = " Username "
        userName.textAlignment = .left
        email.text = " Email "
        email.textAlignment = .left
        mobNum.text = " Mobile Number "
        mobNum.textAlignment = .left
        password.text = " Password "
        password.textAlignment = .left
        
        labelRegister.snp.makeConstraints { make in
            make.width.equalTo(115)
            make.height.equalTo(42)
            make.top.equalTo(200)
            make.left.equalTo(130)
        }
        labelCreate.snp.makeConstraints { make in
            make.width.equalTo(224)
            make.height.equalTo(30)
            make.top.equalTo(236)
            make.left.equalTo(76)
        }
        userName.snp.makeConstraints { make in
            make.width.equalTo(94)
            make.height.equalTo(27)
            make.top.equalTo(284)
            make.left.equalTo(30)
        }
        userTF.snp.makeConstraints { make in
            make.width.equalTo(315)
            make.height.equalTo(48)
            make.top.equalTo(317)
            make.left.equalTo(30)
            
        }
        email.snp.makeConstraints { make in
            make.width.equalTo(99)
            make.height.equalTo(27)
            make.top.equalTo(371)
            make.left.equalTo(31)
        }
        emailTf.snp.makeConstraints { make in
            make.width.equalTo(315)
            make.height.equalTo(48)
            make.top.equalTo(402)
            make.left.equalTo(30)
        }
        mobNum.snp.makeConstraints { make in
            make.width.equalTo(147)
            make.height.equalTo(27)
            make.top.equalTo(456)
            make.left.equalTo(31)
        }
        mobNumTF.snp.makeConstraints { make in
            make.width.equalTo(315)
            make.height.equalTo(48)
            make.top.equalTo(487)
            make.left.equalTo(30)
        }
        password.snp.makeConstraints { make in
            make.width.equalTo(99)
            make.height.equalTo(27)
            make.top.equalTo(541)
            make.left.equalTo(31)
        }
        passTF.snp.makeConstraints { make in
            make.width.equalTo(315)
            make.height.equalTo(48)
            make.top.equalTo(572)
            make.left.equalTo(30)
        }
        loginSV.snp.makeConstraints { make in
            make.width.equalTo(57)
            make.height.equalTo(30)
            make.top.equalTo(655)
            make.left.equalTo(159)
        }
    }
    private func initAction(){
        loginSV.addTarget(self,
                          action: #selector(login (_:)),
                          for: .touchUpInside)
    }
    
    @objc func login(_ sender: UIButton) {
        let vc = ThirdViewController()
        vc.userValue = passTF.text ?? "empty"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    private func isTextFieldFiled(textField:  UITextField) -> Bool {
        guard let text = textField.text else { return false }
        
        if  text.isEmpty {
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = " Заполните поле!!!"
            return false
        } else {
            return true
        }
    }
    
}








