//
//  WelcomeRouter.swift
//  TestApplication
//
//  Created by Asmins on 21/02/2017.
//  Copyright © 2017 Asmin. All rights reserved.
//
import Perform
import Chamomile

// MARK: - WelcomeRouter

final class WelcomeRouter {

    // MARK: - VIPER stack

    weak var flowController: FlowController!

}

// MARK: - WelcomeRouterInput

extension WelcomeRouter: WelcomeRouterInput {
    func showMainRouter(info: Info, counters: [Counters],mainModuleOutput: MainModuleOutput) {
        flowController.openModule(using: .openMainModule, completion: {
            guard let moduleInput = $0 as? MainModuleInput else { fatalError() }
            moduleInput.setupData(info, counters: counters)
            return mainModuleOutput
        })
    }
}

extension Segue {
    static var openMainModule: Segue<MainViewController> {
        return .init(identifier: SegueIndetificator().mainView)
    }
}
