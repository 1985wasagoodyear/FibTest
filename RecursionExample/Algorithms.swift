//
//  Algorithms.swift
//  RecursionExample
//
//  Created by Kevin Yu on 2/11/19.
//  Copyright © 2019 Kevin Yu. All rights reserved.
//

func recursiveFib(_ num: Int64) -> Int64 {
    
    if (num <= 1) { return num }
    return recursiveFib(num-1) + recursiveFib(num-2);
}

func iterativeFib(_ num: Int64) -> Int64 {
    if num == 0 { return 0 }
    var prev: Int64 = 0, next: Int64 = 1
    for _ in 1..<num {
        let temp = prev + next
        (prev, next) = (next, temp)
    }
    
    return next
}
