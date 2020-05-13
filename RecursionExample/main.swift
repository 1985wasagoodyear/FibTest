//
//  main.swift
//  RecursionExample
//
//  Created by Kevin Yu on 2/11/19.
//  Copyright © 2019 Kevin Yu. All rights reserved.
//

// largest possible Int64 without overflow is 92
// largest possible UInt64 without overflow is 93
// test case: 40th number
let num: UInt64 = 40
let dateTest = DateTest()

func test(name: String, _ work: () -> Void) {
    print("""
        *************************************
        \(name)
        *************************************
        """)
    dateTest.printStartDate()
    defer { dateTest.printEndDate() }
    work()
}

test(name: "1 - Starting Iterative Algorithm:") {
    let ans = iterativeFib(num) // ~>2000 milliseconds
    print("Fibonacci result: \(ans)")
}

print("\nPress ENTER for Recursive Algorithm:")
let _ = readLine()

test(name: "2 - Starting Recursive Algorithm:") {
    let ans = recursiveFib(num) // ~5 milliseconds
    print("Fibonacci result: \(ans)")
}

print("\n")
