//
//  ViewModelOutput.swift
//  TurkishLiraCurrencyExchange
//
//  Created by İbrahim Bayram on 8.03.2023.
//

import Foundation

protocol ViewModelOutput {
    func fetchData()
    
    var currencies : [Currency] {get set}
    var currencyNames : [String] {get set}
    var apiService : APIService {get}
    var viewOutput : ViewOutput? {get}
    
    func setDelegate(output : ViewOutput)
    
}
