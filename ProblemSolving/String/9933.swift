//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// 민균이의 비밀번호
// 9933

import Foundation

let n = Int(readLine()!)!
var strs: [String] = []
for _ in 0..<n {
    strs.append(readLine()!)
}

var result = ""
for str1 in strs {
    for str2 in strs {
        if str1 == String(str2.reversed()) {
            result = str1
        }
    }
}

let len = result.count
let centerIndex = result.index(result.startIndex, offsetBy: len/2)

print("\(len) \(result[centerIndex])")
