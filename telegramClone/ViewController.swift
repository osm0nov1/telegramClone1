//
//  ViewController.swift
//  telegramClone
//
//  Created by Rashit Osmonov on 10/2/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var titleLogin: UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.text = "Login to Telegram"
        return view
    }()
    
    private lazy var infoLoginlabel: UILabel = {
        let view = UILabel()
        view.textColor = .systemBlue
        view.font = UIFont.systemFont(ofSize: 15)
        view.text = "Info from login"
        view.isUserInteractionEnabled = true
        let getster = UITapGestureRecognizer(target: self, action: #selector(clickInfo(view:)))
        view.addGestureRecognizer(getster)
        return view
    }()
    
    private lazy var forgetpassword: UILabel = {
        let view = UILabel()
        view.textColor = .gray
        view.font = UIFont.systemFont(ofSize: 15)
        view.text = "Forgot passwprd"
        view.isUserInteractionEnabled = true
        let getster = UITapGestureRecognizer(target: self, action: #selector(clickForget(view:)))
        view.addGestureRecognizer(getster)
        return view
    }()
    
    private lazy var helplabel: UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.font = UIFont.systemFont(ofSize: 20)
        view.text = "Help"
        view.isUserInteractionEnabled = true
        let getster = UITapGestureRecognizer(target: self, action: #selector(clickHelp(view:)))
        
        view.addGestureRecognizer(getster)
        return view
    }()
    
    private lazy var registerlabel: UILabel = {
        let view = UILabel()
        view.textColor = .systemBlue
        view.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        view.isUserInteractionEnabled = true
        let getster = UITapGestureRecognizer(target: self, action: #selector(clickRegister))
        
        view.addGestureRecognizer(getster)
        view.text = "Register (Sing in)"
        return view
    }()
    //    @objc func clickRregister
    
    private lazy var emailEdit: UITextField = {
        let view = UITextField()
        view.placeholder = "Email"
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .black
        return view
    }()
    
    private lazy var passwordEdit: UITextField = {
        let view = UITextField()
        view.placeholder = "Password"
        view.isSecureTextEntry = true
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .black
        return view
    }()
    
    private lazy var loginButton: UIButton = {
        let view = UIButton()
        view.setTitle("Login", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        view.addTarget(self, action: #selector(clickLogin(view:)), for: .touchUpInside)
        view.backgroundColor = .black
        view.layer.cornerRadius = 48 / 2
        return view
    }()
    
    private lazy var loginLayout = UIView()
    
    @objc func clickLogin(view: UIButton) {
        navigationController?.pushViewController(MainControoler(), animated: true)
        print("twrras")
    }
    
    @objc func clickRegister(view: UIButton) {
        navigationController? .pushViewController(Register(), animated: true)
        print("test register")
    }
    
    @objc func clickForget(view: UIButton) {
        navigationController? .pushViewController(ForgetPassword(), animated: true)
        print("test register")
    }
    @objc func clickInfo(view: UIButton) {
        navigationController? .pushViewController(InfoLogin(), animated: true)
        print("test register")
    }
    @objc func clickHelp(view: UIButton) {
        navigationController? .pushViewController(Help(), animated: true)
        print("test register")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        view.addSubview(loginLayout)
        loginLayout.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.height.equalTo(255)
        }
        
        loginLayout.addSubview(titleLogin)
        titleLogin.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        
        loginLayout.addSubview(emailEdit)
        emailEdit.snp.makeConstraints { make in
            make.top.equalTo(titleLogin.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        
        loginLayout.addSubview(passwordEdit)
        passwordEdit.snp.makeConstraints { make in
            make.top.equalTo(emailEdit.snp.bottom).offset(16)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        
        loginLayout.addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(30)
            make.right.equalToSuperview().offset(-30)
            make.bottom.equalToSuperview()
            make.height.equalTo(48)
        }
        
        loginLayout.addSubview(forgetpassword)
        forgetpassword.snp.makeConstraints { make in
            make.bottom.equalTo(loginButton.snp.top).offset(-15)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(infoLoginlabel)
        infoLoginlabel.snp.makeConstraints { make in
            make.top.equalTo(loginLayout.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(registerlabel)
        registerlabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-10)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(helplabel)
        helplabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16 + 16)
            make.right.equalToSuperview().offset(-16)
        }
    }
    
}


   
