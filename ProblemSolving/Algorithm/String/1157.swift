//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// 단어 공부
// 1157

import Foundation

let str = readLine()!
var cnt = Array(repeating: 0, count: 26)

for char in str {
    let lowered = char.lowercased()
    let asciiIntValue = Int(UnicodeScalar(lowered)!.value)
    cnt[asciiIntValue-97] += 1
}

//print(cnt)

var maxIndex = 0
var maxNum = 0
var isValid = true
for i in 0..<cnt.count {
    if maxNum != 0 && maxNum == cnt[i] {
        isValid = false
    }
    if maxNum < cnt[i] {
        isValid = true
        maxIndex = i
        maxNum = cnt[i]
    }
}

if isValid {
    let result = String(UnicodeScalar(maxIndex+65)!)
    print(result)
} else {
    print("?")
}
