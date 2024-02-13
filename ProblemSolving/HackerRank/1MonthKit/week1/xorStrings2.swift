//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// XOR Strings 2
// https://www.hackerrank.com/challenges/one-month-preparation-kit-strings-xor/problem

import Foundation

func stringsXOR(s: String, t: String) -> String {
    var res = ""
    
    for i in 0..<s.count {
        let index = s.index(s.startIndex, offsetBy: i)
        if s[index] == t[index] {
            res += "0"
        } else {
            res += "1"
        }
    }
    return res
}

// 예시 사용법:
//let result = stringsXOR(s: "101010", t: "110110")
//print(result)  // 출력: "011100"

let result = stringsXOR(s: "10101", t: "00101")
print(result)

