//
//  MainPresenter.swift
//  TestApplication
//
//  Created by Asmins on 21/02/2017.
//  Copyright © 2017 Asmin. All rights reserved.
//

import Chamomile

// MARK: - MainPresenter

final class MainPresenter {

    // MARK: - VIPER stack

    var info: Info!
    var counters: [Counters]!

    weak var moduleOutput: ModuleOutput?
    weak var view: MainViewInput!
    var interactor: MainInteractorInput!
    var router: MainRouterInput!

}

// MARK: - MainViewOutput

extension MainPresenter: MainViewOutput {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            let aCell = tableView.dequeueReusableCell(withIdentifier: "mainCell") as! MainTableViewCell
            aCell.config(info)
            cell = aCell
        case 1:
            let aCell = tableView.dequeueReusableCell(withIdentifier: "coutersCell") as! CountersCell
            aCell.config(counters: counters[indexPath.row])
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
            return counters.count
        default:
            return 0
        }
    }
}

// MARK: - MainInteractorOutput

extension MainPresenter: MainInteractorOutput {

}

// MARK: - MainModuleInput

extension MainPresenter: MainModuleInput {
    func setupData(_ info: Info, counters: [Counters]) {
        self.info = info
        self.counters = counters
    }
}
