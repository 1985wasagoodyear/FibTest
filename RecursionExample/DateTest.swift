//
//  DateTest.swift
//  RecursionExample
//
//  Created by Kevin Yu on 2/11/19.
//  Copyright © 2019 Kevin Yu. All rights reserved.
//

import Foundation

final class DateTest {
    
    static let shared = DateTest()
    private var start: Date!
    private let dateFormatter = DateFormatter()
    
    private init() {
    }
    
    func printStartDate() {
        start = Date()
        print("Started Testing: \(start.description)")
    }
    
    func printEndDate() {
        let end = Date()
        print("Ended Testing: \(end.description)")
        let totalTime = end.timeIntervalSince(start)
        print("Total time: \(totalTime * 1000) milliseconds")
    }
}
