//
//  NumberOnlyTextField.swift
//  TestApplication
//
//  Created by Asmins on 21.02.17.
//  Copyright © 2017 Asm. All rights reserved.
//

import UIKit

class NumberOnlyTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.keyboardType = .numberPad
    }

    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        return (action != #selector(UIResponderStandardEditActions.paste(_:)))
    }

}
