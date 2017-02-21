//
//  WelcomeInteractor.swift
//  TestApplication
//
//  Created by Asmins on 21/02/2017.
//  Copyright © 2017 Asmin. All rights reserved.
//
import Foundation
// MARK: - WelcomeInteractor

final class WelcomeInteractor {

    // MARK: - VIPER stack
    var service = WelcomeService()
    var parser = Parser()

    weak var presenter: WelcomeInteractorOutput!

    // MARK: -

}

// MARK: - WelcomeInteractorInput

extension WelcomeInteractor: WelcomeInteractorInput {
    func checkAvailability() -> Bool {
        let number = UserDefaults.standard.value(forKey: "number") as? String

        if number == nil {
            return false
        } else {
            return true
        }
        
    }

    func save(_ number: String) {
        if number.characters.count < 9 {
            presenter.showAlert("Не верный лицевой счёт")
        } else {
            presenter.showView()
            service.getInfo(number, result: { error, result in
                self.presenter.hiddenView()
                if error != nil {
                    self.presenter.showAlert("Ошибка")
                } else {
                    let info = self.parser.parseDataForInfo(result!)
                    let counters = self.parser.parseMainData(result!)
                    self.presenter.showMainModule(info, counters: counters)
                 }
            })
        }

        UserDefaults.standard.set(number, forKey: "number")
    }
}
