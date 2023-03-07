//
//  CurrencyModel.swift
//  TurkishLiraCurrencyExchange
//
//  Created by İbrahim Bayram on 7.03.2023.
//

import Foundation

struct InitialData : Codable {
    let USD : Currency
    let EUR : Currency
    let GBP : Currency
    let GA : Currency
    let C : Currency
    let GAG : Currency
    let BTC : Currency
    let ETH : Currency
    let XU100 : Currency
}
struct Currency : Codable {
    let satis : String
    let alis : String
    let degisim : String
}
