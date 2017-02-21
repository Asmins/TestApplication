//
//  WelcomePresenterInterface.swift
//  TestApplication
//
//  Created by Asmins on 21/02/2017.
//  Copyright © 2017 Asmin. All rights reserved.
//

import Chamomile

// MARK: - WelcomeViewOutput

protocol WelcomeViewOutput: class {
    func checkAvailability(_ textField: UITextField)
    func saveNumber(_ number: String)
}

// MARK: - WelcomeInteractorOutput

protocol WelcomeInteractorOutput: class {
    func showMainModule(_ info: Info, counters: [Counters])
    func showAlert(_ text: String)
    func hiddenView()
    func showView()
}

// MARK: - WelcomeModuleInput

protocol WelcomeModuleInput: ModuleInput {

}

// MARK: - WelcomeModuleOutput

protocol WelcomeModuleOutput: ModuleOutput {

}
