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

print("Starting Iterative Algorithm:")
DateTest.shared.printStartDate()

let ans = iterativeFib(num) // ~>2000 milliseconds

DateTest.shared.printEndDate()
print("Result: \(ans)")

print("\nPress ENTER for Recursive Algorithm:")
let _ = readLine()

print("Starting Iterative Algorithm:")
DateTest.shared.printStartDate()

let ans2 = recursiveFib(num) // ~5 milliseconds

DateTest.shared.printEndDate()
print("Result: \(ans)\n")
