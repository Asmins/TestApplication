//
//  Info.swift
//  TestApplication
//
//  Created by Asmins on 21.02.17.
//  Copyright © 2017 Asm. All rights reserved.
//

import Foundation

class Info {
    var id: Int!
    var address: String!

    init(id: Int, address: String) {
        self.id = id
        self.address = address
    }
}

class Counters {
    var title: String!
    var currentCounters: Int!
    var pastCounters: Int!
    var numberOfCounters: String!

}
