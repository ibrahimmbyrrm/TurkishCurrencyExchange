//
//  ViewOutput.swift
//  TurkishLiraCurrencyExchange
//
//  Created by İbrahim Bayram on 8.03.2023.
//

import Foundation

protocol ViewOutput {
    func saveData(values : [Currency])
    func saveNames(names : [String])
}
