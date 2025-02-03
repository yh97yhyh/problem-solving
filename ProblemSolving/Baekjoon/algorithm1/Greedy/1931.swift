///Users/yh/Desktop/study/problem-solving/ProblemSolving/Baekjoon/Greedy/main.swift
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/1/24.
//

// 회의실 배정
// 1931
// 시작시간도 고려해야 한다

import Foundation

let N = Int(readLine()!)!

var meetings: [(Int, Int)] = []
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let start = input[0]
    let end = input[1]
    meetings.append((start, end))
}

meetings.sort(by: {
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    } else {
        return $0.1 < $1.1

    }
})

var answer = 0
var pre = (0, 0)
for cur in meetings {
    let start = cur.0
    let end = cur.1
    if start >= pre.1 {
        answer += 1
        pre = cur
    }
}
print(answer)
