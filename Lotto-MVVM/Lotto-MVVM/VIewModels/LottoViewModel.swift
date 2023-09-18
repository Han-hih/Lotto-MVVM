//
//  LottoViewModel.swift
//  Lotto-MVVM
//
//  Created by 황인호 on 2023/09/18.
//

import Foundation

class LottoViewModel {
    
    let apiManager = APIRequest()
    
    var lotto: Lotto?
    
    var searchBarText: Observable<Int>?
    
    var numbers = Observable("1")
    var firstMoney = Observable("")
    var date = Observable("")
    
    func format(for number: Int) -> String {
        let numberFormat = NumberFormatter()
        numberFormat.numberStyle = .decimal
        return numberFormat.string(for: number)!
    }
    
    func resultButtonTapped(sessionNumber: Int) {
        apiManager.lottoRequest(sessionNumber) { [weak self] result in
            print(self?.searchBarText?.value ?? 0, "dddddddd")
            switch result {
            case .success(let lotto):
                guard let lotto = lotto else { return }
                let number = "\(lotto.drwtNo1) \(lotto.drwtNo2) \(lotto.drwtNo3) \(lotto.drwtNo4) \(lotto.drwtNo5) \(lotto.drwtNo6) + \(lotto.bnusNo)"
                self?.numbers.value = number
                self?.firstMoney.value = (self?.format(for: lotto.firstWinamnt))!
                self?.date.value = lotto.drwNoDate
                
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
