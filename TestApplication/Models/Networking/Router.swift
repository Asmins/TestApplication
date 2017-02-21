//
//  Router.swift
//  TestApplication
//
//  Created by Asmins on 21.02.17.
//  Copyright © 2017 Asm. All rights reserved.
//
import Foundation
import Alamofire

enum Router {
    static var baseURL = URL(string: "http://dl.erpico.ru")!

    case getAllInfo(String)

    var httpMethod: Alamofire.HTTPMethod {
        switch self {
        case .getAllInfo(number: _):
            return .get
        }
    }

    var path: String {
        switch self {
        case .getAllInfo(number: let number):
            return "test.php?account=\(number)"
        }
    }

    var url : URL {
        let url = Router.baseURL
        return url.appendingPathComponent(path)
    }

}
