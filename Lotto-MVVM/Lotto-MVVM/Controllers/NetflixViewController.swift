//
//  NetflixViewController.swift
//  Lotto-MVVM
//
//  Created by 황인호 on 2023/09/18.
//

import UIKit

class NetflixViewController: UIViewController {

    let emailView = {
        let view = CustomView()
        return view
    }()
    let passwordView = {
        let view = CustomView()
        return view
    }()
    let nicknameView = {
        let view = CustomView()
        return view
    }()
    let locationView = {
        let view = CustomView()
        return view
    }()
    let recommedView = {
        let view = CustomView()
        return view
    }()
    let emailTextField = {
        let tf = CustomTextField()
        tf.keyboardType = .emailAddress
        return tf
    }()
    let passwordTextField = {
        let tf = CustomTextField()
        return tf
    }()
    let nicknameTextField = {
        let tf = CustomTextField()
        return tf
    }()
    let locationTextField = {
        let tf = CustomTextField()
        return tf
    }()
    let recommendTextField = {
        let tf = CustomTextField()
        return tf
    }()
    
    let emailLabel = {
        let label = CustomLabel()
        label.text = "이메일 주소 또는 전화번호"
        return label
    }()
    let passwordLabel = {
        let label = CustomLabel()
        label.text = "비밀번호"
        return label
    }()
    let nicknameLabel = {
        let label = CustomLabel()
        label.text = "닉네임"
        return label
    }()
    let locationLabel = {
        let label = CustomLabel()
        label.text = "위치"
        return label
    }()
    let recommendLabel = {
        let label = CustomLabel()
        label.text = "추천 코드 입력"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        [emailView, passwordView, nicknameView, locationView, recommedView, emailTextField, passwordTextField, nicknameTextField, locationTextField, recommendTextField, emailLabel, passwordLabel, nicknameLabel, locationLabel, recommendLabel].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        setAutoLayout()
    }
        func setAutoLayout() {
            NSLayoutConstraint.activate([
                //이메일뷰
                emailView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
                emailView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                emailView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
                emailView.heightAnchor.constraint(equalToConstant: 45),
                //비밀번호뷰
                passwordView.topAnchor.constraint(equalTo: emailView.bottomAnchor, constant: 15),
                passwordView.leadingAnchor.constraint(equalTo: emailView.leadingAnchor),
                passwordView.trailingAnchor.constraint(equalTo: emailView.trailingAnchor),
                passwordView.heightAnchor.constraint(equalTo: emailView.heightAnchor),
                //닉네임뷰
                nicknameView.topAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: 15),
                nicknameView.leadingAnchor.constraint(equalTo: emailView.leadingAnchor),
                nicknameView.trailingAnchor.constraint(equalTo: emailView.trailingAnchor),
                nicknameView.heightAnchor.constraint(equalTo: emailView.heightAnchor),
                //위치뷰
                locationView.topAnchor.constraint(equalTo: nicknameView.bottomAnchor, constant: 15),
                locationView.leadingAnchor.constraint(equalTo: emailView.leadingAnchor),
                locationView.trailingAnchor.constraint(equalTo: emailView.trailingAnchor),
                locationView.heightAnchor.constraint(equalTo: emailView.heightAnchor),
                //추천코드뷰
                recommedView.topAnchor.constraint(equalTo: locationView.bottomAnchor, constant: 15),
                recommedView.leadingAnchor.constraint(equalTo: emailView.leadingAnchor),
                recommedView.trailingAnchor.constraint(equalTo: emailView.trailingAnchor),
                recommedView.heightAnchor.constraint(equalTo: emailView.heightAnchor),
                //이메일 텍스트 필드
                emailTextField.topAnchor.constraint(equalTo: emailView.topAnchor, constant: 5),
                emailTextField.leadingAnchor.constraint(equalTo: emailView.leadingAnchor, constant: 8),
                emailTextField.trailingAnchor.constraint(equalTo: emailView.trailingAnchor, constant: -8),
                emailTextField.bottomAnchor.constraint(equalTo: emailView.bottomAnchor, constant: 2),
                //패스워드 텍스트 필드
                passwordTextField.topAnchor.constraint(equalTo: passwordView.topAnchor, constant: 5),
                passwordTextField.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 8),
                passwordTextField.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: -8),
                passwordTextField.bottomAnchor.constraint(equalTo: nicknameView.bottomAnchor, constant: 2),
                // 닉네임 텍스트 필드
                nicknameTextField.topAnchor.constraint(equalTo: nicknameView.topAnchor, constant: 5),
                nicknameTextField.leadingAnchor.constraint(equalTo: nicknameView.leadingAnchor, constant: 8),
                nicknameTextField.trailingAnchor.constraint(equalTo: nicknameView.trailingAnchor, constant: -8),
                nicknameTextField.bottomAnchor.constraint(equalTo: nicknameView.bottomAnchor, constant: 2),
                //위치 텍스트 필드
                locationTextField.topAnchor.constraint(equalTo: locationView.topAnchor, constant: 5),
                locationTextField.leadingAnchor.constraint(equalTo: locationView.leadingAnchor, constant: 8),
                locationTextField.trailingAnchor.constraint(equalTo: locationView.trailingAnchor, constant: -8),
                locationTextField.bottomAnchor.constraint(equalTo: locationView.bottomAnchor, constant: 2),
                //추천 텍스트 필드
                recommendTextField.topAnchor.constraint(equalTo: recommedView.topAnchor, constant: 5),
                recommendTextField.leadingAnchor.constraint(equalTo: recommedView.leadingAnchor, constant: 8),
                recommendTextField.trailingAnchor.constraint(equalTo: recommedView.trailingAnchor, constant: -8),
                recommendTextField.bottomAnchor.constraint(equalTo: recommedView.bottomAnchor, constant: 2),
                //이메일 레이블
                emailLabel.leadingAnchor.constraint(equalTo: emailView.leadingAnchor, constant: 8),
                emailLabel.trailingAnchor.constraint(equalTo: emailView.trailingAnchor, constant: -8),
                emailLabel.centerYAnchor.constraint(equalTo: emailView.centerYAnchor),
                //패스워드 레이블
                passwordLabel.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 8),
                passwordLabel.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: -8),
                passwordLabel.centerYAnchor.constraint(equalTo: passwordView.centerYAnchor),
                //닉네임 레이블
                nicknameLabel.leadingAnchor.constraint(equalTo: nicknameView.leadingAnchor, constant: 8),
                nicknameLabel.trailingAnchor.constraint(equalTo: nicknameView.trailingAnchor, constant: -8),
                nicknameLabel.centerYAnchor.constraint(equalTo: nicknameView.centerYAnchor),
                //위치 레이블
                locationLabel.leadingAnchor.constraint(equalTo: locationView.leadingAnchor, constant: 8),
                locationLabel.trailingAnchor.constraint(equalTo: locationView.trailingAnchor, constant: -8),
                locationLabel.centerYAnchor.constraint(equalTo: locationView.centerYAnchor),
                //추천 레이블
                recommendLabel.leadingAnchor.constraint(equalTo: recommedView.leadingAnchor, constant: 8),
                recommendLabel.trailingAnchor.constraint(equalTo: recommedView.trailingAnchor, constant: -8),
                recommendLabel.centerYAnchor.constraint(equalTo: recommedView.centerYAnchor),
            ])
            
            
        }
        
        
        
        
        
    
    

}
