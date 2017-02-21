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
        Alamofire.request("http://dl.erpico.ru/test.php?account=\(bil)", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON(completionHandler: { response in
            switch response.result {
            case .success(let data):
                do {
                    let json = try JSONSerialization.jsonObject(with: response.data!, options: [])
                    result(nil, JSON(json))
                } catch {
                    print(error)
                }
            case .failure(let error):
                print(error)
            }
        })
    }
}
