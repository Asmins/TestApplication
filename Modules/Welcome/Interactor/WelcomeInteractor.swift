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
            service.getInfo(number, result: { result,error in
                print(result,error)
            })
        }

        UserDefaults.standard.set(number, forKey: "number")
    }
}
