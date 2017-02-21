//
//  WelcomePresenter.swift
//  TestApplication
//
//  Created by Asmins on 21/02/2017.
//  Copyright © 2017 Asmin. All rights reserved.
//

import Chamomile

// MARK: - WelcomePresenter

final class WelcomePresenter {

    // MARK: - VIPER stack

    weak var moduleOutput: ModuleOutput?
    weak var view: WelcomeViewInput!
    var interactor: WelcomeInteractorInput!
    var router: WelcomeRouterInput!

}

// MARK: - WelcomeViewOutput

extension WelcomePresenter: WelcomeViewOutput {
    
    func saveNumber(_ number: String) {
        interactor.save(number)
    }

    func checkAvailability(_ textField: UITextField) {
        let availability = interactor.checkAvailability()

        if availability {
            textField.text = UserDefaults.standard.value(forKey: "number") as! String
        }
    }
}

// MARK: - WelcomeInteractorOutput

extension WelcomePresenter: WelcomeInteractorOutput {
    func showAlert(_ text: String) {
        view.showAlert(text)
    }

    func hiddenView() {
        view.hiddenView()
    }

    func showView() {
        view.showView()
    }

    func showMainModule(_ info: Info, counters: [Counters]) {
        router.showMainRouter(info: info, counters: counters, mainModuleOutput: self)
    }
}

// MARK: - WelcomeModuleInput

extension WelcomePresenter: WelcomeModuleInput {

}

extension WelcomePresenter: MainModuleOutput {

}
