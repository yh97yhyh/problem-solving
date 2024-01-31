//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/31.
//

// 피보나치 함수
// 1003

import Foundation

//func fibonacci(_ n: Int) -> Int {
//    if n == 0 {
//        print("0")
//        return 0
//    } else if n == 1{
//        print("1")
//        return 1
//    } else {
//        return fibonacci(n-1) + fibonacci(n-2)
//    }
//}
//
//for i in 0...6 {
//    print("==========\(i)==========")
//    print(fibonacci(i))
//    print("\n")
//}

let testCase = Int(readLine()!)!

var ns: [Int] = []
for _ in 0..<testCase {
    let n = Int(readLine()!)!
    ns.append(n)
}
var maxN = ns.max()!

var dpArray = Array(repeating: Array(repeating: 0, count: maxN+1), count: 2)

func dp() {
    for j in 0...maxN {
        if j == 0 {
            dpArray[0][j] = 1
            dpArray[1][j] = 0
        } else if j == 1 {
            dpArray[0][j] = 0
            dpArray[1][j] = 1
        } else if j == 2 {
            dpArray[0][j] = 1
            dpArray[1][j] = 1
        } else {
            dpArray[0][j] = dpArray[0][j-1] + dpArray[0][j-2]
            dpArray[1][j] = dpArray[1][j-1] + dpArray[1][j-2]
        }
    }
}

dp()

var result = ""
for n in ns {
    result += "\(dpArray[0][n]) \(dpArray[1][n])\n"
}
print(result)
