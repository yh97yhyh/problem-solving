//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/23.
//

// 파일 정리
// 20291

import Foundation

let n = Int(readLine()!)!

var dicts: [String: Int] = [:]
for _ in 0..<n {
    let str = readLine()!
    let ext = str.components(separatedBy: ".")[1]
    if dicts.keys.contains(ext) {
        dicts[ext]! += 1
    } else {
        dicts[ext] = 1
    }
}

let sorted = dicts.sorted { $0.key < $1.key }

for sort in sorted {
    print("\(sort.key) \(sort.value)")
}
