//
//  WelcomeAssember.swift
//  TestApplication
//
//  Created by Asmins on 21/02/2017.
//  Copyright © 2017 Asmin. All rights reserved.
//

import Foundation

// MARK: - WelcomeAssembler

final class WelcomeAssembler: NSObject {

    @IBOutlet weak var view: WelcomeViewController!

    override func awakeFromNib() {
        super.awakeFromNib()

        let interactor = WelcomeInteractor()
        let presenter = WelcomePresenter()
        let router = WelcomeRouter()

        view.presenter = presenter
        view.moduleInput = presenter
        interactor.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        router.flowController = view
    }

}
