//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/7/24.
//

// 영단어 암기는 괴로워
// 20920

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1] // 길이가 m 이상인 단어만 외움

var words: [String: (Int, Int)] = [:] // count, len

for _ in 0..<n {
    let str = readLine()!
    let len = str.count
    
    if len < m {
        continue
    }
    
    if let _ = words[str] {
        words[str]!.0 += 1
    } else {
        words[str] = (1, len)
    }
}

let sorted = words.sorted {
    if $0.value.0 == $1.value.0 && $0.value.1 == $1.value.1 {
        return $0.key < $1.key
    } else if $0.value.0 == $1.value.0 {
        return $0.value.1 > $1.value.1
    } else {
        return $0.value.0 > $1.value.0
    }
}

for sort in sorted {
    print(sort.key)
}
