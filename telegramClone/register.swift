//
//  register.swift
//  telegramClone
//
//  Created by Rashit Osmonov on 11/2/22.
//

import Foundation
import UIKit

class RegisterController: UIViewController{
    
    private lazy var titleRegister: UILabel = {
            let view = UILabel()
            view.textColor = .black
            view.font = UIFont.systemFont(ofSize: 30, weight: .bold)
            view.text = "Register to Telegram"
            return view
        }()
    
    private lazy var clickBack: UIButton = {
        let view = UIButton()
        view.backgroundColor = .white
        view.setTitle("<Exit", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.addTarget(self, action: #selector(clickBack(sender:)), for: .touchUpInside)
        return view
    }()
    
    private lazy var nameRegister: UITextField = {
        let view = UITextField()
        view.placeholder = "name"
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .black
        return view
    }()
 
    private lazy var emailRegister: UITextField = {
        let view = UITextField()
        view.placeholder = "email"
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .black
        return view
    }()
    private lazy var passwordRegister: UITextField = {
        let view = UITextField()
        view.placeholder = "password"
        view.font = UIFont.systemFont(ofSize: 20)
        view.isSecureTextEntry = true
        view.textColor = .black
        return view
    }()
    private lazy var repeatpasswordRegister: UITextField = {
        let view = UITextField()
        view.placeholder = "repeatpassword"
        view.font = UIFont.systemFont(ofSize: 20)
        view.isSecureTextEntry = true
        view.textColor = .black
        return view
    }()
    private lazy var buttonRegister: UIButton = {
        let view = UIButton()
        view.setTitle("Done", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        view.addTarget(self, action: #selector(clickRegister(view:)), for: .touchUpInside)
        view.layer.cornerRadius = 48 / 2
        view.backgroundColor = .black
        return view
    }()
    
    private lazy var  registerLayout = UIView()
    func validLogin(myLogin: String) -> Bool
        {
            let login =  ("[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")
            let loginTesting = NSPredicate(format: "SELF MATCHES %@", login)
            return loginTesting.evaluate(with: myLogin)
        }
    

    
            
            
        
    @objc func clickRegister(view: UIButton){
        let login = validLogin(myLogin: emailRegister.text!)
        
        let textpassword = passwordRegister.text!.count
        let repeatPassword = passwordRegister.text! == repeatpasswordRegister.text!
        let textCount = (nameRegister.text!.count != 0)
        
        if (textpassword >= 7) && login && repeatPassword && textCount{
            navigationController?.popToRootViewController(animated: true)
           
        }else {
            let alertController = UIAlertController(title: "Error", message: "make sure the text is correct", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .cancel)
            alertController.addAction(alertAction)
            
            self.present(alertController, animated: true)
           
       
        
        }
        
    }
    override func viewDidLoad() {
        
        view.backgroundColor = .white
        
        view.addSubview(clickBack)
        clickBack.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(view.frame.width / 20)
            make.left.equalToSuperview().offset(view.frame.width / 30)
        }
        
        view.addSubview(registerLayout)
        registerLayout.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.height.equalTo(380)
        }
        
        registerLayout.addSubview(titleRegister)
        titleRegister.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        registerLayout.addSubview(nameRegister)
        nameRegister.snp.makeConstraints { make in
            make.top.equalTo(titleRegister.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
       
        registerLayout.addSubview(emailRegister)
        emailRegister.snp.makeConstraints { make in
            make.top.equalTo(nameRegister.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        registerLayout.addSubview(passwordRegister)
        passwordRegister.snp.makeConstraints { make in
            make.top.equalTo(emailRegister.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        registerLayout.addSubview(repeatpasswordRegister)
        repeatpasswordRegister.snp.makeConstraints { make in
            make.top.equalTo(passwordRegister.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        registerLayout.addSubview(buttonRegister)
        buttonRegister.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-30)
            make.bottom.equalToSuperview().offset(-30)
            make.height.equalTo(50)
            
            
        }
        
    }
    
    @objc func clickBack(sender: UIButton){
        navigationController?.popToRootViewController(animated: true)
    }
}

//class Register: UIViewController {
//
//    private lazy var lebel: UILabel = {
//        let view = UILabel()
//        view.textColor = UIColor.black
//        view.font = UIFont.systemFont(ofSize: 30, weight: .bold)
//        view.text = "Регистрация"
//        return view
//    }()
//
//    private lazy var emaill: UITextField = {
//        let view = UITextField()
//        view.placeholder = "Email"
//        view.font = UIFont.systemFont(ofSize: 20)
//        view.textColor = .black
//        return view
//    }()
//    private lazy var nameOrLastName: UITextField = {
//        let view = UITextField()
//        view.placeholder = "Name or Last name"
//        view.font = UIFont.systemFont(ofSize: 20)
//        view.textColor = .black
//        return view
//    }()
//    private lazy var passwordSingIn: UITextField = {
//        let view = UITextField()
//        view.placeholder = "Password"
//        view.isSecureTextEntry = true
//        view.font = UIFont.systemFont(ofSize: 20)
//        view.textColor = .black
//        return view
//    }()
//    private lazy var repeatPassword: UITextField = {
//        let view = UITextField()
//        view.placeholder = "Repeat Password"
//        view.isSecureTextEntry = true
//        view.font = UIFont.systemFont(ofSize: 20)
//        view.textColor = .black
//        return view
//    }()
//
//    private lazy var Done: UIButton = {
//        let view = UIButton()
//        view.setTitle("Done", for: .normal)
//        view.setTitleColor(.white, for: .normal)
//        view.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .bold)
//        view.addTarget(self, action: #selector(Done(view:)), for: .touchUpInside)
//        view.backgroundColor = .black
//        view.layer.cornerRadius = 48 / 2
//        return view
//
//    }()
//    func validLogin(myLogin: String) -> Bool
//    {
//        let login =  ("[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")
//        let loginTesting = NSPredicate(format: "SELF MATCHES %@", login)
//        return loginTesting.evaluate(with: myLogin)
//    }
//
//
//
//
//
//
//    @objc func clickRegister(view: UIButton){
//        let login = validLogin(myLogin: emaill.text!)
//
//        let textpassword = emaill.text!.count
//        let repeatPassword = passwordSingIn.text! == repeatPassword.text!
//        let textCount = (nameOrLastName.text!.count != 0) && nameOrLastName.text!.count >= 7
//
//        if (textpassword >= 7) && login && repeatPassword && textCount{
//            navigationController?.popToRootViewController(animated: true)
//
//        }else {
//            let alertController = UIAlertController(title: "Error", message: "make sure the text is correct", preferredStyle: .alert)
//            let alertAction = UIAlertAction(title: "OK", style: .cancel)
//            alertController.addAction(alertAction)
//
//            self.present(alertController, animated: true)
//
//
//
//        }
//
//    }
//    @objc func Done(view: UIButton) {
//        navigationController?.pushViewController(ViewController(), animated: true)
//        print("twrras")
//    }
//
//    override  func viewDidLoad() {
//        view.backgroundColor = .white
//
//
//
//        view.addSubview(lebel)
//        lebel.snp.makeConstraints { make in
//            make.centerX.equalToSuperview()
//            make.right.equalToSuperview().offset(20)
//            make.left.equalToSuperview().offset(20)
//            make.top.equalToSuperview().offset(50)
//        }
//
//        view.addSubview(emaill)
//        emaill.snp.makeConstraints { make in
//            make.centerX.equalToSuperview()
//            make.top.equalToSuperview().offset(300)
//            make.left.equalToSuperview().offset(20)
//            make.right.equalToSuperview().offset(-20)
//        }
//
//
//        view.addSubview(nameOrLastName)
//        nameOrLastName.snp.makeConstraints { make in
//            make.top.equalTo(emaill.snp.bottom).offset(50)
//            make.left.equalToSuperview().offset(16)
//            make.right.equalToSuperview().offset(-16)
//        }
//        view.addSubview(passwordSingIn)
//        passwordSingIn.snp.makeConstraints { make in
//            make.top.equalTo(nameOrLastName.snp.bottom).offset(50)
//            make.left.equalToSuperview().offset(16)
//            make.right.equalToSuperview().offset(16)
//        }
//        view.addSubview(repeatPassword)
//        repeatPassword.snp.makeConstraints { make in
//            make.top.equalTo(nameOrLastName.snp.bottom).offset(125)
//            make.left.equalToSuperview().offset(16)
//            make.right.equalToSuperview().offset(16)
//        }
//        view.addSubview(Done)
//        Done.snp.makeConstraints { make in
//            make.left.equalToSuperview().offset(30)
//            make.right.equalToSuperview().offset(-30)
//            make.bottom.equalToSuperview().offset(-100)
//            make.height.equalTo(48)
//        }
//    }
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.setNavigationBarHidden(true, animated: animated)
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        navigationController?.setNavigationBarHidden(false, animated: animated)
//    }
//
//}
//
