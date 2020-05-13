//
//  Operator+Overflow.swift
//  Created 5/13/20
//  Using Swift 5.0
// 
//  Copyright © 2020 Kevin Yu. All rights reserved.
//
//  https://github.com/1985wasagoodyear
//

import Foundation

infix operator ?+

func ?+<T: AdditiveArithmetic & BinaryInteger>(lhs: T, rhs: T) -> T? {
    if (lhs > Int.max - Int(rhs)) {
        return nil
    }
    return lhs + rhs
}

func ?+<T: AdditiveArithmetic & UnsignedInteger>(lhs: T, rhs: T) -> T? {
    if (lhs > UInt.max - UInt(rhs)) {
        return nil
    }
    return lhs + rhs
}
