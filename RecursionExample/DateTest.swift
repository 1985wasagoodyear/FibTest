//
//  DateTest.swift
//  RecursionExample
//
//  Created by Kevin Yu on 2/11/19.
//  Copyright © 2019 Kevin Yu. All rights reserved.
//

import Foundation

final class DateTest {
    
    private var start: Date = Date()
    
    func printStartDate() {
        start = Date()
        print("Started testing at: \(start.description)")
    }
    
    func printEndDate() {
        let end = Date()
        print("Ended testing at: \(end.description)")
        let totalTime = end.timeIntervalSince(start)
        print("Total time elapsed: \(totalTime * 1000) milliseconds")
    }
}
