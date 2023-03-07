//
//  CurrencyCell.swift
//  TurkishLiraCurrencyExchange
//
//  Created by İbrahim Bayram on 7.03.2023.
//

import UIKit

class CurrencyCell: UITableViewCell {
    
    @IBOutlet weak var sellRateLabel: UILabel!
    @IBOutlet weak var buyRateLabel: UILabel!
    @IBOutlet weak var currencyRateOfChange: UILabel!
    @IBOutlet weak var currencyNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   

}
