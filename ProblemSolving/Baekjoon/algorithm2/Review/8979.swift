//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/5/24.
//

// 올림픽
// 8979

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // 국가 수
let k = input[1] // 등수를 알고 싶은 국가

var dict: [Int: (Int, Int, Int)] = [:]
var rank = Array(repeating: 0, count: n+1)

for _ in 0..<n {
    let medals = readLine()!.split(separator: " ").map { Int(String($0))! }
    dict[medals[0]] = (medals[1], medals[2], medals[3])
}

let sorted = dict.sorted {
    if $0.value.0 == $1.value.0 && $0.value.1 == $1.value.1 {
        return $0.value.2 > $1.value.2
    } else if $0.value.0 == $1.value.0 {
        return $0.value.1 > $1.value.1
    } else {
        return $0.value.0 > $1.value.0
    }
}

var curRank = 0
var sameCount = 0
var pre = (-1, -1, -1)
for s in sorted {
    let i = s.key
    let val = s.value
    
    if pre == val {
        sameCount += 1
    } else {
        curRank += sameCount + 1
        sameCount = 0
    }
    rank[i] = curRank
    
    pre = val
}

print(rank[k])
