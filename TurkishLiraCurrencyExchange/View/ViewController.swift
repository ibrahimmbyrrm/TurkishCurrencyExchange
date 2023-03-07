//
//  ViewController.swift
//  TurkishLiraCurrencyExchange
//
//  Created by İbrahim Bayram on 7.03.2023.
//

import UIKit



class ViewController: UIViewController {
    private lazy var currencyList = [Currency]()
    private lazy var nameList = [String]()
    var viewModel = CurrencyViewModel()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        viewModel.setDelegate(output: self)
        viewModel.fetchData()
    }


}
extension ViewController : ViewOutput {
    func saveData(values: [Currency]) {
        self.currencyList = values
        self.tableView.reloadData()
    }
    
    func saveNames(names: [String]) {
        self.nameList = names
        self.tableView.reloadData()
    }
}
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currencyList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CurrencyCell
        guard currencyList.isEmpty == false else {return cell}
        let currency = currencyList[indexPath.row]
        if let rate = Double(currency.degisim) {
            if rate < 0 {
                cell.currencyRateOfChange.textColor = .red
                cell.currencyRateOfChange.text = currency.degisim
            }else {
                cell.currencyRateOfChange.textColor = .green
                cell.currencyRateOfChange.text = "+\(currency.degisim)"
            }
        }
        cell.currencyNameLabel.text = nameList[indexPath.row]
        cell.buyRateLabel.text = currency.alis
        cell.sellRateLabel.text = currency.satis
        return cell
    }
}


