//
//  WelcomeRouterInterface.swift
//  TestApplication
//
//  Created by Asmins on 21/02/2017.
//  Copyright © 2017 Asmin. All rights reserved.
//

// MARK: - WelcomeRouterInput

protocol WelcomeRouterInput: class {
    func showMainRouter(info: Info, counters: [Counters],mainModuleOutput: MainModuleOutput)
}
