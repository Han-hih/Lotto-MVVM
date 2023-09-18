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
    
    var number1 = Observable(1)
    var number2 = Observable(2)
    var number3 = Observable(3)
    var number4 = Observable(4)
    var number5 = Observable(5)
    var number6 = Observable(6)
    var bonusNumber = Observable(7)
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
                guard let lotto = lotto else {
                    return
                }
                self?.number1.value = lotto.drwtNo1
                self?.number2.value = lotto.drwtNo2
                self?.number3.value = lotto.drwtNo3
                self?.number4.value = lotto.drwtNo4
                self?.number5.value = lotto.drwtNo5
                self?.number6.value = lotto.drwtNo6
                self?.bonusNumber.value = lotto.bnusNo
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
