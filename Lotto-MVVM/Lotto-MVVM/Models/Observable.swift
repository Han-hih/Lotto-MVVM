//
//  Observable.swift
//  Lotto-MVVM
//
//  Created by 황인호 on 2023/09/18.
//

import Foundation

class Observable<T> {
    private var listener: ((T) -> Void)?
    
    var value: T {
        didSet {
            listener?(value)
            print(value, "----")
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(_ sample: @escaping (T) -> Void) {
        sample(value)
//        print(value, "0000000")
        listener = sample
    }
    
    
}
