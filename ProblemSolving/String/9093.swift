//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// 단어 뒤집기
// 9093

import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    var result = ""
    let strs = readLine()!.split(separator: " ")
    for str in strs {
        result += "\(String(str.reversed())) "
    }
    print(result)
}
