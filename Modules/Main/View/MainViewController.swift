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
        tableView.allowsSelection = false
        tableView.register(UINib(nibName: "MainCell", bundle: nil), forCellReuseIdentifier: "mainCell")
        tableView.register(UINib(nibName: "CountersCell", bundle: nil), forCellReuseIdentifier: "coutersCell")
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return presenter.tableView(tableView, cellForRowAt: indexPath)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return presenter.tableView(tableView, numberOfRowsInSection: section)
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
        case 1:
            return 130
        default:
            return 0
        }
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}
