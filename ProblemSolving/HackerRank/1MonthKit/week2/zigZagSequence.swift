//
//  zigZagSequence.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Zig Zag Sequence
// https://www.hackerrank.com/challenges/one-month-preparation-kit-zig-zag-sequence/problem

import Foundation

func findZigZagSequence(_ a: inout [Int]) {
    a.sort()
    let n = a.count
    let mid = n / 2
    a.swapAt(mid, n - 1)

    var st = mid + 1
    var ed = n - 2
    while st <= ed {
        a.swapAt(st, ed)
        st += 1
        ed -= 1
    }

    for i in 0..<n {
        if i > 0 { print(" ", terminator: "") }
        print(a[i], terminator: "")
    }
    print()
}

let test = [2, 3, 5, 1, 4] // -> [1, 4, 5, 3, 2]
