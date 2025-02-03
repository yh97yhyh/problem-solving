//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/28/24.
//

// 서로 다른 부분 문자열의 개수
// 11478

import Foundation

let str = readLine()!.map { $0 } // [String.Element]

var setSubString = Set<String>()

let len = str.count

for i in 0..<len {
    var cur = ""
    for j in i..<len {
        cur += String(str[j])
        setSubString.insert(cur)
    }
}

print(setSubString.count)
