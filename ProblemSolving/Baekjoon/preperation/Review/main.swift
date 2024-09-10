//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/10/24.
//

// 영단어 암기는 괴로워
// 20920

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // 영어 지문에 나오는 단어 개수
let m = input[1] // 외울 단어의 길이 기준

var words: [String: Int] = [:]

for _ in 0..<n {
    let word = readLine()!
    
    if word.count < m {
        continue
    }
    
    if words[word] != nil {
        words[word]! += 1
    } else {
        words[word] = 1
    }
}

let sorted = words.sorted {
    if $0.value == $1.value && $0.key.count == $1.key.count {
        return $0.key < $1.key
    } else if $0.value == $1.value {
        return $0.key.count > $1.key.count
    } else {
        return $0.value > $1.value
    }
}

for sort in sorted {
    print(sort.key)
}
