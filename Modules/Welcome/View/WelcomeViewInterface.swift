//
//  WelcomeViewInterface.swift
//  TestApplication
//
//  Created by Asmins on 21/02/2017.
//  Copyright © 2017 Asmin. All rights reserved.
//

// MARK: - WelcomeViewInput

protocol WelcomeViewInput: class {
    func showAlert(_ text: String)
    func hiddenView()
    func showView()
}
