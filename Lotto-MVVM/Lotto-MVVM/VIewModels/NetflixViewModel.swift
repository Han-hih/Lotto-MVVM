//
//  NetflixViewModel.swift
//  Lotto-MVVM
//
//  Created by 황인호 on 2023/09/18.
//

import Foundation

class NetflixViewModel {
    
    var email = Observable("aaa@aaa.com")
    var isValid = Observable(false)
    
    func emailTextChaned() {
        if email.value.contains("@") {
            isValid.value = true
        } else {
            isValid.value = false
            print("Dddd")
        }
    }
    
}



