//
//  CustomTextField.swift
//  Lotto-MVVM
//
//  Created by 황인호 on 2023/09/18.
//

import UIKit

class CustomTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setTextField()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func setTextField() {
        backgroundColor = UIColor.lightGray
        layer.cornerRadius = 8
        clipsToBounds = true
    }
}
