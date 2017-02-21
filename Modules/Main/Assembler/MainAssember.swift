//
//  MainAssember.swift
//  TestApplication
//
//  Created by Asmins on 21/02/2017.
//  Copyright © 2017 Asmin. All rights reserved.
//

import Foundation

// MARK: - MainAssembler

final class MainAssembler: NSObject {

    @IBOutlet weak var view: MainViewController!

    override func awakeFromNib() {
        super.awakeFromNib()

        let interactor = MainInteractor()
        let presenter = MainPresenter()
        let router = MainRouter()

        view.presenter = presenter
        view.moduleInput = presenter
        interactor.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        router.flowController = view
    }

}
