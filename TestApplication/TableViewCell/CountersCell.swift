//
//  CountersCell.swift
//  TestApplication
//
//  Created by Asmins on 21.02.17.
//  Copyright © 2017 Asm. All rights reserved.
//

import UIKit

class CountersCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var countersNumberLabel: UILabel!
    @IBOutlet weak var pastCountersLabel: UILabel!
    @IBOutlet weak var currentCountersLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func config(counters: Counters) {
        titleLabel.text = "Cчетчик \(counters.title!)"
        countersNumberLabel.text = "#\(counters.numberOfCounters!)"
        pastCountersLabel.text = "\(counters.pastCounters!)"
        currentCountersLabel.text = "\(counters.currentCounters!)"
    }

}
