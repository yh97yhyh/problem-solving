//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/02/04.
//

// 일곱 난쟁이
// 2309

import Foundation

var ns: [Int] = []
for _ in 0..<9 {
    ns.append(Int(readLine()!)!)
}

//ns.sort()

var dwaf: [Int] = []
var result: [Int] = []

func recur() {
    if dwaf.count == 7 {
        if dwaf.reduce(0, +) == 100 {
            result = dwaf
        }
        return
    }
    
    for j in 0..<9 {
        if dwaf.count > 0 && dwaf.last! > ns[j] {
            continue
        }
        
        if !dwaf.contains(ns[j]) {
            dwaf.append(ns[j])
            recur()
            dwaf.popLast()
        }
    }
}

recur()

var resultString = ""
for r in result {
    resultString += "\(r)\n"
}
print(resultString)
