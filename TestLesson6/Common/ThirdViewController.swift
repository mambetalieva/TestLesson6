//
//  ThirdViewController.swift
//  TestLesson6
//
//  Created by Каира on 7.03.2023.
//

import UIKit
import SnapKit

class ThirdViewController: UIViewController {
    
     var userValue: String?
    
    let labelThirdVC: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    let enterEmail: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    let textFent: UITextField = {
        let textF = UITextField()
        textF.placeholder = " Email"
        textF.textAlignment = .left
        textF.layer.cornerRadius = 6
        textF.layer.borderColor = UIColor.black.cgColor
        textF.layer.borderWidth = 1
        return textF
    }()
    let labelChoose: UILabel = {
        let lChoose = UILabel()
        lChoose.numberOfLines = 0
        lChoose.font = .systemFont(ofSize: 16)
        return lChoose
        
    }()
    let needHelp: UIButton = {
       let nHelp = UIButton()
        nHelp.setTitle(" Need Help?", for: .normal)
        return nHelp
    }()
    let sendOtp: UIButton = {
       let otp = UIButton()
       otp.setTitle(" Send OTP", for: .normal)
        otp.layer.cornerRadius = 22
        otp.layer.borderWidth = 1
        otp.layer.borderColor = UIColor.black.cgColor
       otp.backgroundColor = .blue
        return otp
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .link
        view.addSubview(labelThirdVC)
        view.addSubview(enterEmail)
        view.addSubview(textFent)
        view.addSubview(labelChoose)
        view.addSubview(needHelp)
        view.addSubview(sendOtp)
        
        labelThirdVC.text = " Forgot Password"
        labelThirdVC.textAlignment = .center
        enterEmail.text = " Enter Your Email"
        enterEmail.textAlignment = .left
        labelChoose.text = " Choose another method "
        labelChoose.textAlignment = .left
        
        initUI()
        initAction()
        
    }
    
    private func  initUI(){
        labelThirdVC.snp.makeConstraints { make in
            make.width.equalTo(201)
            make.height.equalTo(46)
            make.top.equalTo(231)
            make.left.equalTo(88)
            
        }
        enterEmail.snp.makeConstraints { make in
            make.width.equalTo(221)
            make.height.equalTo(27)
            make.top.equalTo(328)
            make.left.equalTo(31)
            
        }
        textFent.snp.makeConstraints { make in
            make.width.equalTo(315)
            make.height.equalTo(48)
            make.top.equalTo(359)
            make.left.equalTo(30)
            
        }
        labelChoose.snp.makeConstraints { make in
            make.width.equalTo(196)
            make.height.equalTo(24)
            make.top.equalTo(418)
            make.left.equalTo(31)
        }
        needHelp.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(24)
            make.top.equalTo(418)
            make.left.equalTo(245)
        }
        sendOtp.snp.makeConstraints { make in
            make.width.equalTo(280)
            make.height.equalTo(48)
            make.top.equalTo(464)
            make.left.equalTo(48)
        }
    }
    private func initAction(){
        sendOtp.addTarget(self,
                          action: #selector(needHelp (_:)),
                          for: .touchUpInside)
    }
@objc func needHelp(_ sender: UIButton) {
    let vc = ThirdViewController()
    vc.userValue = textFent.text ?? "empty"
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


