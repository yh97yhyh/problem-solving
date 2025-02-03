//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/11.
//

// 두 용액
// 2470
// 투포인터

import Foundation

let n = Int(readLine()!)!
let liquids = readLine()!.split(separator: " ").map { Int(String($0))! }

let sortedLiquids = liquids.sorted()
//print(sortedLiquids)

var start = 0
var end = n - 1
var sum = Int.max
var answer = [0, 0]

while true {
    if start >= end {
        break
    }
    
    let currentSum = sortedLiquids[start] + sortedLiquids[end]
    if abs(currentSum) < sum {
        sum = abs(currentSum)
        answer[0] = sortedLiquids[start]
        answer[1] = sortedLiquids[end]
    }
    
    if currentSum < 0 {
        start += 1
    } else {
        end -= 1
    }
}

print(answer[0], answer[1])

//while true {
//    if i == len / 2 {
//        if len % 2 != 0 {
//            let liquid1 = sortedLiquids[i]
//            let previousLiquid = sortedLiquids[i-1]
//            let nextLiquid = sortedLiquids[i+1]
//            let newMix1 = liquid1 + previousLiquid
//            let newMix2 = liquid1 + nextLiquid
//
//            var newMix = Int.max
//            var liquid2 = 0
//            if abs(newMix1) < abs(newMix2) {
//                newMix = newMix1
//                liquid2 = previousLiquid
//            } else {
//                newMix = newMix2
//                liquid2 = nextLiquid
//            }
//            if abs(newMix) < abs(currentMix) {
//                currentMix = newMix
//                if liquid1 < liquid2 {
//                    result = "\(liquid1) \(liquid2)"
//                } else {
//                    result = "\(liquid2) \(liquid1)"
//                }
//            }
//            break
//        } else {
//            break
//        }
//    }
//
//    let liquid1 = sortedLiquids[i]
//    let liquid2 = sortedLiquids[len-1-i]
////    print(liquid1, liquid2)
//    let newMix = liquid1 + liquid2
//    if abs(newMix) < abs(currentMix) {
//        currentMix = newMix
//        result = "\(liquid1) \(liquid2)"
//    }
//    i += 1
//}
