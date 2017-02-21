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

    weak var moduleOutput: ModuleOutput?
    weak var view: MainViewInput!
    var interactor: MainInteractorInput!
    var router: MainRouterInput!

}

// MARK: - MainViewOutput

extension MainPresenter: MainViewOutput {

}

// MARK: - MainInteractorOutput

extension MainPresenter: MainInteractorOutput {

}

// MARK: - MainModuleInput

extension MainPresenter: MainModuleInput {

}
