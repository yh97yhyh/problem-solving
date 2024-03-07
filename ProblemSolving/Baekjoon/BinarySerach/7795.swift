//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/11.
//

// 먹을 것인가 먹힐 것인가
// 7795

import Foundation

struct Case {
    var aArray: [Int]
    var bArray: [Int]
}
var cases: [Case] = []

let totalN = Int(readLine()!)!

for _ in 0..<totalN {
    let _ = readLine()!.split(separator: " ").map { Int(String($0))! }
    let aInputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let bInputs = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let sortedA = aInputs.sorted()
    let sortedB = bInputs.sorted()
    cases.append(Case(aArray: aInputs, bArray: sortedB))
}

var resultPrint = ""
for abCase in cases {
    var result = 0
//    let aList = abCase.aArray
//    let bList = abCase.bArray
    
    for a in abCase.aArray {
//        if a < abCase.bArray.min()! {
//            continue
//        } else if a > abCase.bArray.max()! {
//            result += abCase.bArray.count
//            continue
//        } else {
//            for b in abCase.bArray {
//                if a > b {
//                    result += 1
//                } else {
//                    break
//                }
//            }
//        }
        for b in abCase.bArray {
            if a > b {
                result += 1
            } else {
                break
            }
        }
    }
    resultPrint += String(result)
    resultPrint += "\n"
}

print(resultPrint)
