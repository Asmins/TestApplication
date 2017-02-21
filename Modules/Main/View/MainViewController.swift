//
//  MainViewController.swift
//  TestApplication
//
//  Created by Asmins on 21/02/2017.
//  Copyright © 2017 Asmin. All rights reserved.
//

import Chamomile

// MARK: - MainViewController

final class MainViewController: UIViewController, FlowController {

    @IBOutlet weak var tableView: UITableView!
    // MARK: - VIPER stack

    var presenter: MainViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
        setup(tableView)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

}

// MARK: - MainViewInput

extension MainViewController: MainViewInput {
    func setup(_ tableView: UITableView) {
        tableView.register(UINib(nibName: "MainCell", bundle: nil), forCellReuseIdentifier: "mainCell")
       // tableView.register(<#T##cellClass: AnyClass?##AnyClass?#>, forCellReuseIdentifier: <#T##String#>)
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            let aCell = tableView.dequeueReusableCell(withIdentifier: "mainCell") as! MainTableViewCell
            cell = aCell
        default:
            return cell
        }
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 0
        default:
            return 0
        }
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 100
        default:
            return 0
        }
    }

//    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int) {
//
//    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}
