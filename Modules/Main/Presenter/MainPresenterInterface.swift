//
//  MainPresenterInterface.swift
//  TestApplication
//
//  Created by Asmins on 21/02/2017.
//  Copyright © 2017 Asmin. All rights reserved.
//

import Chamomile

// MARK: - MainViewOutput

protocol MainViewOutput: class {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
}

// MARK: - MainInteractorOutput

protocol MainInteractorOutput: class {

}

// MARK: - MainModuleInput

protocol MainModuleInput: ModuleInput {
    func setupData(_ info: Info, counters: [Counters])
}

// MARK: - MainModuleOutput

protocol MainModuleOutput: ModuleOutput {

}
