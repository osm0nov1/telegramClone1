//
//  help.swift
//  telegramClone
//
//  Created by Rashit Osmonov on 11/2/22.
//

import Foundation
import SnapKit
import UIKit

class HelpController: UIViewController{
    private lazy var scrollView = UIScrollView()
    private lazy var HelpLayout = UIView()
    private lazy var clickBack: UIButton = {
        let view = UIButton()
        view.backgroundColor = .white
        view.setTitle("<Exit", for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.addTarget(self, action: #selector(clickRegister(view:)), for: .touchUpInside)
        return view
    }()
    private lazy var HelpText: UILabel = {
        let view = UILabel()
        view.textColor = .black
        view.text = "Для входа приложения 'Telegram' сначала прочтите условия о соглашении.\n\nСледующий шаг - вам нужно пройти простую регистрацию.\n\nНаслаждайтесь использованием нашего приложения"
        view.numberOfLines = 0
        return view
    }()
    @objc func clickRegister(view: UIButton){
        navigationController?.popToRootViewController(animated: true)
    }

override func viewDidLoad() {
        view.backgroundColor = .white

        view.addSubview(HelpLayout)
        HelpLayout.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.height.equalTo(200)
        }
        HelpLayout.addSubview(HelpText)
        HelpText.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.height.equalToSuperview()
            make.width.equalToSuperview()
            
        }
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        view.addSubview(clickBack)
        clickBack.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(16)
        }
    }
}

//class Help: UIViewController {
//
//    private lazy var help: UILabel = {
//        let view = UILabel()
//        view.font = UIFont.systemFont(ofSize: 18)
//        view.textColor = .black
//        view.text = "hdagdsahgcvdsahgcvhgsdvacgvsadhcvhgsadvcuygasCJKBAsjvcxcgkasfdjkhasmxbdashjDVUAFSdukabsxvagFDYAgdkancknkjhcasjdasbcjhbashgc"
//        view.numberOfLines = 10
//        return view
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
//    @objc func Exit (view: UIButton) {
//        navigationController?.popToViewController(MainControoler(), animated: true)
//        print("twrras")
//    }
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = UIColor.white
//
//        view.addSubview(Exit)
//        Exit.snp.makeConstraints { make in
//            make.top.equalToSuperview().offset(16)
//            make.left.equalToSuperview().offset(20)
//        }
//        view.addSubview(help)
//        help.snp.makeConstraints { make in
//            make.centerY.equalToSuperview()
//            make.left.equalToSuperview().offset(20)
//            make.right.equalToSuperview().offset(-20)
//            make.top.equalTo(Exit.snp.bottom).offset(10)
//
//        }
//
//    }
//
//}
//
