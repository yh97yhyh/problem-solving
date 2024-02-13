//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/18.
//

// 단어 정렬
// 1181

import Foundation

var n = Int(readLine()!)!
var strings: [String] = []

for _ in 0..<n {
//    let str = readLine()!
//    if !strings.contains(str) {
//        strings.append(str)
//    }
    strings.append(readLine()!)
}

let sortedStrings = Array(Set(strings)).sorted {
    if $0.count == $1.count {
        return $0 < $1
    } else {
        return $0.count < $1.count
    }
}

for str in sortedStrings {
    print(str)
}
