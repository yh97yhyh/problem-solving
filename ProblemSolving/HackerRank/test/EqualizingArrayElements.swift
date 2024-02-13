//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/13/24.
//

// Equalizing Array Elements
// 어렵다

import Foundation

func minOperations(arr: [Int], threshold: Int, d: Int) -> Int {
    // Write your code here
    var countDics: [Int: Int] = [:]

    for element in arr {
        var currentElement = element

        while currentElement % d == 0 {
            currentElement /= d
            countDics[element, default: 0] += 1
        }
    }

    var minCount = Int.max

    for (_, count) in countDics {
        minCount = min(minCount, count)
    }

    return minCount >= threshold ? minCount : 0
}

let test0Arr = [1, 2, 3, 4, 5]
let test0Thres = 3
let test0D = 2

let test1Arr = [64, 30, 25, 33]
let test1Thres = 2
let test1D = 2

let test2Arr = [1, 3, 2, 4]
let test2Thres = 4
let test2D = 3

print(minOperations(arr: test0Arr, threshold: test0Thres, d: test0D))
print(minOperations(arr: test1Arr, threshold: test1Thres, d: test1D))
print(minOperations(arr: test2Arr, threshold: test2Thres, d: test2D))
