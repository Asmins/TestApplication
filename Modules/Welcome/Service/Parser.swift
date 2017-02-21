//
//  Parser.swift
//  TestApplication
//
//  Created by Asmins on 21.02.17.
//  Copyright © 2017 Asm. All rights reserved.
//
import SwiftyJSON
import Foundation

class Parser {

    func parseDataForInfo(_ json: JSON) -> Info {
        let jsonInfo = json["info"]
        return Info(id: jsonInfo[0]["id"].int!,
                    address: jsonInfo[0]["address"].stringValue)
    }

    func parseMainData(_ json: JSON) -> [Counters] {
        var array = [Counters]()
        let jsonCounters = json["counters"]

        for i in 0..<jsonCounters.count {
            let counters = Counters()
            counters.title = jsonCounters[i]["service_name"].stringValue
            counters.numberOfCounters = jsonCounters[i]["number"].stringValue
            counters.currentCounters = jsonCounters[i]["evidence"].int!
            counters.pastCounters = jsonCounters[i]["evidence_past"].int!
            array.append(counters)
        }

        return array
    }

}
