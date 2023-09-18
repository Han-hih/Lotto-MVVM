//
//  CustomView.swift
//  Lotto-MVVM
//
//  Created by 황인호 on 2023/09/18.
//

import UIKit

class CustomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func setView() {
        backgroundColor = .lightGray
        layer.cornerRadius = 8
        clipsToBounds = true
    }
    
}
