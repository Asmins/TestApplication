//
//  WelcomeViewController.swift
//  TestApplication
//
//  Created by Asmins on 21/02/2017.
//  Copyright © 2017 Asmin. All rights reserved.
//

import Chamomile

// MARK: - WelcomeViewController

final class WelcomeViewController: UIViewController, FlowController {

    @IBOutlet weak var loadingActivityIndecator: UIActivityIndicatorView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var numberTextField: NumberOnlyTextField!
    
    // MARK: - VIPER stack

    var presenter: WelcomeViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.checkAvailability(numberTextField)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)

    }

    @IBAction func nextViewTap(_ sender: Any) {
        presenter.saveNumber(numberTextField.text!)
    }
}

// MARK: - WelcomeViewInput

extension WelcomeViewController: WelcomeViewInput {
    func showAlert(_ text: String) {
        let alert = UIAlertController(title: "", message: text, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
}
