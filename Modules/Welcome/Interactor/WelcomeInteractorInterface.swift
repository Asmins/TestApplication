//
//  WelcomeInteractorInterface.swift
//  TestApplication
//
//  Created by Asmins on 21/02/2017.
//  Copyright © 2017 Asmin. All rights reserved.
//

// MARK: - WelcomeInteractorInput

protocol WelcomeInteractorInput: class {
    func checkAvailability() -> Bool
    func save(_ number: String)
    
}
