//
//  MainTableViewCell.swift
//  TestApplication
//
//  Created by Asmins on 21.02.17.
//  Copyright © 2017 Asm. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var bilLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func config(info: Info) {
        bilLabel.text = "\(info.id)"
        addressLabel.text = info.address
    }

}
