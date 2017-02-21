//
//  GreenNavController.swift
//  TestApplication
//
//  Created by Asmins on 21.02.17.
//  Copyright © 2017 Asm. All rights reserved.
//

import UIKit

class GreenNavController: UINavigationController {

    let greenColor = UIColor(red: 0/255, green: 168/255, blue: 0/255, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavController()
        // Do any additional setup after loading the view.
    }

    private func setupNavController() {
        self.navigationBar.tintColor = UIColor.white
        self.navigationBar.barTintColor = greenColor
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    }

}
