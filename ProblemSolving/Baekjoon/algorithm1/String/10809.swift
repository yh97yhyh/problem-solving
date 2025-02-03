//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/24.
//

// 알파벳 찾기
// 10809

import Foundation

let str = readLine()!
let alphabet = "abcdefghijklmnopqrstuvwxyz"

var result = ""
for alpha in alphabet {
    if let index = str.firstIndex(of: alpha) {
        result += "\(index.encodedOffset) "
    } else {
        result += "\(-1) "
    }
}

print(result)
