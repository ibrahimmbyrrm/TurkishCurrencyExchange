//
//  CurrencyViewModel.swift
//  TurkishLiraCurrencyExchange
//
//  Created by İbrahim Bayram on 7.03.2023.
//

import Foundation

class CurrencyViewModel : ViewModelOutput {
    var currencyNames: [String] = []
    var viewOutput: ViewOutput?
    var currencies: [Currency] = []
    lazy var apiService: APIService = APIManager()

    init() {
        apiService = APIManager()
    }
    
    func setDelegate(output: ViewOutput) {
        viewOutput = output
    }
    
    func fetchData() {
        apiService.fetchData { result in
            switch result {
            case .success(let currencies):
                self.currencies = currencies
                self.viewOutput?.saveData(values: self.currencies)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        self.currencyNames = apiService.fetchNames()
        self.viewOutput?.saveNames(names: self.currencyNames)
    }
    
    
}
