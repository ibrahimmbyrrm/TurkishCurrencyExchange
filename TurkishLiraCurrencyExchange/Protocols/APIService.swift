//
//  APIService.swift
//  TurkishLiraCurrencyExchange
//
//  Created by İbrahim Bayram on 7.03.2023.
//

import Foundation

protocol APIService {
    func fetchData(completion : @escaping(Result<[Currency], Error>)->Void)
    func fetchNames() -> [String]
}
