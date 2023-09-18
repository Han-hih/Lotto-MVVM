//
//  CustomLabel.swift
//  Lotto-MVVM
//
//  Created by 황인호 on 2023/09/18.
//

import UIKit

class CustomLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func setLabel() {
        textColor = .white
        textAlignment = .center
        font = .systemFont(ofSize: 18)
    }
    
    
    
}
