//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/28/24.
//

// 회사에 있는 사람
// 7785

import Foundation

let N = Int(readLine()!)!

var dict: [String: Int] = [:]
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { String($0) }
    if input[1] == "enter" {
        dict[input[0]] = 1
    } else {
        dict[input[0]] = 0
    }
}

let sortedKey = dict.keys.sorted(by: >)

//var answer = ""
for key in sortedKey {
    let strKey = String(key)
    if dict[strKey] == 1 {
        print(strKey)
    }
}

//print(answer)
