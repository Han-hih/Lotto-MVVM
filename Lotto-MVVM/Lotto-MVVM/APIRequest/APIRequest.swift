//
//  APIRequest.swift
//  Lotto-MVVM
//
//  Created by 황인호 on 2023/09/18.
//

import UIKit

class APIRequest {
    func lottoRequest(_ session: String, completion: @escaping (Result<Lotto?, NetworkError>) -> Void) {
        guard let url = URL(string: "https://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo=" + "\(session)") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(.networkingError))
                return
            }
            
            guard let data = data else {
                completion(.failure(.dataError))
                return
            }
            
            do {
                let result = try JSONDecoder().decode(Lotto.self, from: data)
                completion(.success(result))
                return
            } catch {
                completion(.failure(.parseError))
            }
        }.resume()
    }

}

