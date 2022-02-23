//
//  forgetPassword.swift
//  telegramClone
//
//  Created by Rashit Osmonov on 11/2/22.
//

import Foundation
import UIKit
import SnapKit
class ForgotPasswordController: UIViewController {
    private lazy var forgotlayout = UIView()
    private lazy var loginfield: UITextField = {
        let view = UITextField()
        view.placeholder = "Email"
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .black
        return view
    }()
    private lazy var titleForgot: UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.text = "Forgot Password"
        return view
    }()
    private lazy var loginButton: UIButton = {
        let view = UIButton()
        view.setTitle("отправить", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        view.addTarget(self, action: #selector(clickLogin(view:)), for: .touchUpInside)
        view.backgroundColor = .black
        view.layer.cornerRadius = 48 / 2
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
    func validLogin(myLogin: String) -> Bool
    {
        let login =  ("[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")
        let loginTesting = NSPredicate(format: "SELF MATCHES %@", login)
        return loginTesting.evaluate(with: myLogin)
    }
    @objc func clickLogin(view: UIButton){
        let login = validLogin(myLogin: loginfield.text!)
        if login  {
            let alert = UIAlertController(title: "успешно", message: "отправлено", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default) {
                UIAlertAction in
                NSLog("OK Pressed")
                self.navigationController?.pushViewController(ViewController(), animated: true)
                print("test")
            }
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        } else {
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
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(16)
        }
        view.addSubview(forgotlayout)
        forgotlayout.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().offset(-16)
            make.left.equalToSuperview().offset(16)
            make.height.equalTo(255)
        }
        forgotlayout.addSubview(titleForgot)
        titleForgot.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        forgotlayout.addSubview(loginfield)
        loginfield.snp.makeConstraints { make in
            make.top.equalTo(titleForgot.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        forgotlayout.addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-30)
            make.bottom.equalToSuperview()
            make.height.equalTo(50)
        }
    }
    @objc func clickBack(sender: UIButton){
        navigationController?.popToRootViewController(animated: true)
    }
}

//class ForgetPassword: UIViewController {
//
//
//    private lazy var forget: UILabel = {
//        let view = UILabel()
//        view.text = "введите email или номер телефона"
//        view.numberOfLines = 2
//        view.textColor = UIColor.black
//        view.font = UIFont.systemFont(ofSize: 20, weight: .bold)
//
//        return view
//
//    }()
//    private lazy var Exit: UIButton = {
//        let view = UIButton()
//        view.setTitle("Exit", for: .normal)
//        view.setTitleColor(.black, for: .normal)
//        view.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
//        view.addTarget(self, action: #selector(Exit(view:)), for: .touchUpInside)
//        view.backgroundColor = .white
//        //        view.layer.cornerRadius = 48 / 2
//        return view
//    }()
//    private lazy var emaillForgeg: UITextField = {
//        let view = UITextField()
//        view.placeholder = "Email"
//        view.font = UIFont.systemFont(ofSize: 20)
//        view.textColor = .black
//        return view
//    }()
//    private lazy var send: UIButton = {
//        let view = UIButton()
//        view.setTitle("Send", for: .normal)
//        view.setTitleColor(.white, for: .normal)
//        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
//        view.backgroundColor = .black
//        view.addTarget(self, action: #selector(clickSend(view:)), for: .touchUpInside)
//        view.layer.cornerRadius = 48 / 2
//        return view
//    }()
//
//    private lazy var examination: UILabel = {
//        let view = UILabel()
//        view.text = "При выполнение работы убедитесь что вы правильно ввели email или же номер"
//        view.numberOfLines = 4
//        view.textColor = UIColor.black
//        view.font = UIFont.systemFont(ofSize: 20, weight: .bold)
//
//        return view
//
//    }()
//
//
//    @objc func Exit (view: UIButton) {
//        navigationController?.popToViewController(ViewController(), animated: true)
//        print("twrras")
//    }
//
//    @objc func clickSend(view: UIButton){
//        let alert = UIAlertController(title: "успешно", message: "отправлено", preferredStyle: .alert)
//
//        let okAction = UIAlertAction(title: "OK", style: .default) {
//            UIAlertAction in
//            NSLog("OK Pressed")
//            self.navigationController?.pushViewController(ViewController(), animated: true)
//        }
//        alert.addAction(okAction)
//        self.present(alert, animated: true, completion: nil)
//
//    }
//    func validLogin(myLogin: String) -> Bool
//    {
//        let login =  ("[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")
//        let loginTesting = NSPredicate(format: "SELF MATCHES %@", login)
//        return loginTesting.evaluate(with: myLogin)
//    }
//
//
//    @objc func clickLogin(view: UIButton){
//        let login = validLogin(myLogin: emaillForgeg.text!)
//        if login  {
//            let alert = UIAlertController(title: "успешно", message: "отправлено", preferredStyle: .alert)
//
//            let okAction = UIAlertAction(title: "OK", style: .default) {
//                UIAlertAction in
//                NSLog("OK Pressed")
//                self.navigationController?.pushViewController(ViewController(), animated: true)
//                print("test")
//            }
//            alert.addAction(okAction)
//            self.present(alert, animated: true, completion: nil)
//
//        } else {
//            let alertController = UIAlertController(title: "Error", message: "make sure the text is correct", preferredStyle: .alert)
//            let alertAction = UIAlertAction(title: "OK", style: .cancel)
//            alertController.addAction(alertAction)
//
//            self.present(alertController, animated: true)
//
//
//        }
//
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = UIColor.white
//
//        view.addSubview(forget)
//        forget.snp.makeConstraints { make in
//            make.centerX.equalToSuperview()
//            make.right.equalToSuperview().offset(-16)
//            make.left.equalToSuperview().offset(16)
//            make.top.equalToSuperview().offset(150)
//        }
//        view.addSubview(Exit)
//        Exit.snp.makeConstraints { make in
//            make.top.equalToSuperview().offset(16 + 16)
//            make.left.equalToSuperview().offset(20)
//        }
//        view.addSubview(emaillForgeg)
//        emaillForgeg.snp.makeConstraints { make in
//            make.top.equalTo(forget.snp.bottom).offset(20)
//            make.left.equalToSuperview().offset(20)
//            make.right.equalToSuperview().offset(-20)
//        }
//        view.addSubview(send)
//        send.snp.makeConstraints { make in
//            make.bottom.equalToSuperview().offset(-60)
//            make.left.equalToSuperview().offset(20)
//            make.right.equalToSuperview().offset(-20)
//        }
//        view.addSubview(examination)
//        examination.snp.makeConstraints { make in
//            make.centerX.equalToSuperview()
//            make.right.equalToSuperview().offset(-16)
//            make.left.equalToSuperview().offset(16)
//            make.top.equalTo(emaillForgeg.snp.bottom).offset(50)
//
//        }
//    }
//}
//
//
//
//
//
