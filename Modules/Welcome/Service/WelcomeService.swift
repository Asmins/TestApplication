//
//  WelcomeService.swift
//  TestApplication
//
//  Created by Asmins on 21.02.17.
//  Copyright © 2017 Asm. All rights reserved.
//
import UIKit
import Alamofire
import SwiftyJSON
import Foundation

class WelcomeService {
    fileprivate let manager: ApiManagerProtocol

    init(manager: ApiManagerProtocol = SessionManager.default) {
        self.manager = manager
    }

    func getInfo(_ bil: String, result: @escaping (_ error: Error?, _ result: JSON?) -> ()) {

        let _ = manager.apiRequest(.getAllInfo(bil), parameters: nil, headers: nil).apiResponse(completion: { response in
            switch response.result {
            case .success(let json):
                print(json)
            case .failure(let error):
                print(error)
            }
        })
    }
}
