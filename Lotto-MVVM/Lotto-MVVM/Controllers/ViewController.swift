//
//  ViewController.swift
//  Lotto-MVVM
//
//  Created by 황인호 on 2023/09/17.
//

import UIKit

class ViewController: UIViewController {

    let apiManager = APIRequest()
    
    var lotto: Lotto?
    
    let sessionTextField = {
        let tf = UITextField()
        tf.placeholder = "회차를 입력해주세요"
        tf.backgroundColor = .lightGray
        tf.layer.cornerRadius = 8
        tf.clipsToBounds = true
        return tf
    }()
    
    let sessionButton = {
        let bt = UIButton()
        bt.backgroundColor = .red
        bt.setTitle("당첨 정보 확인하러 가기", for: .normal)
        bt.layer.cornerRadius = 8
        bt.clipsToBounds = true
        bt.addTarget(self, action: #selector(sessionButtonTapped), for: .touchUpInside)
        
        return bt
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        [sessionTextField, sessionButton].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        setAutoLayout()
    }
    
    func setAutoLayout() {
        NSLayoutConstraint.activate([
            //회차정보 입력 텍스트필드
            sessionTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            sessionTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            sessionTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            sessionTextField.heightAnchor.constraint(equalToConstant: 40),
            //당첨 정보 확인 버튼
            sessionButton.topAnchor.constraint(equalTo: sessionTextField.bottomAnchor, constant: 50),
            sessionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    
    @objc func sessionButtonTapped(_ sender: UIButton) {
        apiManager.lottoRequest(sessionTextField.text!) { [weak self] value in
            switch value {
            case .success(let lotto):
                self?.lotto = lotto
                print(lotto)
            case .failure(let error):
                switch error {
                case .dataError:
                    print("데이터 에러")
                case .networkingError:
                    print("네트워킹 에러")
                case .parseError:
                    print("파싱 에러")
                }
            }
            }
        }
    }



