//
//  APIManager.swift
//  TurkishLiraCurrencyExchange
//
//  Created by İbrahim Bayram on 7.03.2023.
//

import Foundation

struct APIManager : APIService {
    let requestURL = "https://api.genelpara.com/embed/doviz.json"
    
    func fetchData(completion : @escaping(Result<[Currency], Error>)->Void) {
        guard let url = URL(string: requestURL) else {return}
        var list = [Currency]()
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let data = data else {return}
            
            do {
                DispatchQueue.main.async {
                    let jsonData = try? JSONDecoder().decode(InitialData.self, from: data)
                    guard let jsonData = jsonData else {return}
                    list.append(jsonData.BTC)
                    list.append(jsonData.C)
                    list.append(jsonData.ETH)
                    list.append(jsonData.EUR)
                    list.append(jsonData.GA)
                    list.append(jsonData.GAG)
                    list.append(jsonData.GBP)
                    list.append(jsonData.USD)
                    list.append(jsonData.XU100)
                    completion(.success(list))
                    
                }
            }catch {
                print(error.localizedDescription)
                completion(.failure(error))
            }
        }.resume()
    }
    func fetchNames() -> [String] {
        return ["BTC", "C" , "ETH" , "EUR" , "GA" , "GAG" , "GBP" , "USD" , "XU100"]
    }
}
