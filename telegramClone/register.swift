//
//  register.swift
//  telegramClone
//
//  Created by Rashit Osmonov on 11/2/22.
//

import Foundation
import UIKit

class Register: UIViewController {
    
    private lazy var lebel: UILabel = {
        let view = UILabel()
        view.textColor = UIColor.black
        view.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.text = "Регистрация"
        return view
    }()
    
    private lazy var emaill: UITextField = {
        let view = UITextField()
        view.placeholder = "Email"
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .black
        return view
    }()
    private lazy var nameOrLastName: UITextField = {
        let view = UITextField()
        view.placeholder = "Name or Last name"
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .black
        return view
    }()
    private lazy var passwordSingIn: UITextField = {
        let view = UITextField()
        view.placeholder = "Password"
        view.isSecureTextEntry = true
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .black
        return view
    }()
    private lazy var repeatPassword: UITextField = {
        let view = UITextField()
        view.placeholder = "Repeat Password"
        view.isSecureTextEntry = true
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .black
        return view
    }()
    
    private lazy var Done: UIButton = {
        let view = UIButton()
        view.setTitle("Done", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        view.addTarget(self, action: #selector(Done(view:)), for: .touchUpInside)
        view.backgroundColor = .black
        view.layer.cornerRadius = 48 / 2
        return view
        
    }()
    @objc func Done(view: UIButton) {
        navigationController?.pushViewController(ViewController(), animated: true)
        print("twrras")
    }
    
    override  func viewDidLoad() {
        view.backgroundColor = .white
        
        
        
        view.addSubview(lebel)
        lebel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.right.equalToSuperview().offset(20)
            make.left.equalToSuperview().offset(20)
            make.top.equalToSuperview().offset(50)
        }
        
        view.addSubview(emaill)
        emaill.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(300)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        
        
        view.addSubview(nameOrLastName)
        nameOrLastName.snp.makeConstraints { make in
            make.top.equalTo(emaill.snp.bottom).offset(50)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
        }
        view.addSubview(passwordSingIn)
        passwordSingIn.snp.makeConstraints { make in
            make.top.equalTo(nameOrLastName.snp.bottom).offset(50)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(16)
        }
        view.addSubview(repeatPassword)
        repeatPassword.snp.makeConstraints { make in
            make.top.equalTo(nameOrLastName.snp.bottom).offset(125)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(16)
        }
        view.addSubview(Done)
        Done.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(30)
            make.right.equalToSuperview().offset(-30)
            make.bottom.equalToSuperview().offset(-100)
            make.height.equalTo(48)
        }
    }
}

