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
    func showMainModule()
    func checkAvailability(_ textField: UITextField)
    func saveNumber(_ number: String)
}

// MARK: - WelcomeInteractorOutput

protocol WelcomeInteractorOutput: class {
    func showAlert(_ text: String)
}

// MARK: - WelcomeModuleInput

protocol WelcomeModuleInput: ModuleInput {

}

// MARK: - WelcomeModuleOutput

protocol WelcomeModuleOutput: ModuleOutput {

}
