//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// 누울 자리를 찾아라
// 1652

import Foundation

let n = Int(readLine()!)!

var arr: [[Character]] = []
for _ in 0..<n {
    arr.append(Array(readLine()!))
}

var verCnt = 0
var horCnt = 0
var verCheck = ""
var horCheck = ""

for i in 0..<n {
    horCheck = ""
    for j in 0..<n {
        let currentHor = arr[i][j]
        if currentHor == "." {
            horCheck += String(currentHor)
        }
        if currentHor == "X" || j == n-1 {
            if horCheck.contains("..") {
//                print(i, j, arr[i][j])
                horCnt += 1
            }
            horCheck = ""
        }
    }
}

//print("==========")

for i in 0..<n {
    verCheck = ""
    for j in 0..<n {
        let currentVer = arr[j][i]
        if currentVer == "." {
            verCheck += String(currentVer)
        }
        if currentVer == "X" || j == n-1 {
            if verCheck.contains("..") {
//                print(i, j, arr[j][i])
                verCnt += 1
            }
            verCheck = ""
        }
    }
}

//print("==========")

print("\(horCnt) \(verCnt)")
