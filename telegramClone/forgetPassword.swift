//
//  forgetPassword.swift
//  telegramClone
//
//  Created by Rashit Osmonov on 11/2/22.
//

import Foundation
import UIKit
import SnapKit


class ForgetPassword: UIViewController {
    
    
    private lazy var forget: UILabel = {
        let view = UILabel()
        view.text = "введите email или номер телефона"
        view.numberOfLines = 2
        view.textColor = UIColor.black
        view.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        return view
        
    }()
    private lazy var Exit: UIButton = {
        let view = UIButton()
        view.setTitle("Exit", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.addTarget(self, action: #selector(Exit(view:)), for: .touchUpInside)
        view.backgroundColor = .white
        //        view.layer.cornerRadius = 48 / 2
        return view
    }()
    private lazy var emaillForgeg: UITextField = {
        let view = UITextField()
        view.placeholder = "Email"
        view.font = UIFont.systemFont(ofSize: 20)
        view.textColor = .black
        return view
    }()
    private lazy var send: UIButton = {
        let view = UIButton()
        view.setTitle("Send", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        view.backgroundColor = .black
        view.addTarget(self, action: #selector(clickSend(view:)), for: .touchUpInside)
        view.layer.cornerRadius = 48 / 2
        return view
    }()
    
    private lazy var examination: UILabel = {
        let view = UILabel()
        view.text = "При выполнение работы убедитесь что вы правильно ввели email или же номер"
        view.numberOfLines = 4
        view.textColor = UIColor.black
        view.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        return view
        
    }()
    
    
    @objc func Exit (view: UIButton) {
        navigationController?.pushViewController(ViewController(), animated: true)
        print("twrras")
    }
    
    @objc func clickSend(view: UIButton){
        let alert = UIAlertController(title: "успешно", message: "отправлено", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) {
            UIAlertAction in
            NSLog("OK Pressed")
            self.navigationController?.pushViewController(ViewController(), animated: true)
        }
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
    }
    func validLogin(myLogin: String) -> Bool
    {
        let login =  ("[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")
        let loginTesting = NSPredicate(format: "SELF MATCHES %@", login)
        return loginTesting.evaluate(with: myLogin)
    }
    
    
    @objc func clickLogin(view: UIButton){
        let login = validLogin(myLogin: emaillForgeg.text!)
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
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        view.addSubview(forget)
        forget.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.right.equalToSuperview().offset(-16)
            make.left.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(150)
        }
        view.addSubview(Exit)
        Exit.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16 + 16)
            make.left.equalToSuperview().offset(20)
        }
        view.addSubview(emaillForgeg)
        emaillForgeg.snp.makeConstraints { make in
            make.top.equalTo(forget.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        view.addSubview(send)
        send.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-60)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        view.addSubview(examination)
        examination.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.right.equalToSuperview().offset(-16)
            make.left.equalToSuperview().offset(16)
            make.top.equalTo(emaillForgeg.snp.bottom).offset(50)
            
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}





