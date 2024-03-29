//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/29/24.
//

// 신나는 함수 실행
// 9184

import Foundation

var dy = Array(repeating: Array(repeating: Array(repeating: 1, count: 21), count: 21), count: 21)

for a in 1...20 {
    for b in 1...20 {
        for c in 1...20 {
            if a < b && b < c {
                dy[a][b][c] = dy[a][b][c-1] + dy[a][b-1][c-1] - dy[a][b-1][c]
            } else {
                dy[a][b][c] = dy[a-1][b][c] + dy[a-1][b-1][c] + dy[a-1][b][c-1] - dy[a-1][b-1][c-1]
            }
        }
    }
}
//print(dy)

func getNum(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if a <= 0 || b <= 0 || c <= 0 {
        return 1
    } else if a > 20 || b > 20 || c > 20 {
        return dy[20][20][20]
    } else {
        return dy[a][b][c]
    }
}

var answer = ""
while true {
    let input = readLine()!
    if input == "-1 -1 -1" {
        break
    }
    
    let nums = input.split(separator: " ").map { Int(String($0))! }
    let a = nums[0]
    let b = nums[1]
    let c = nums[2]
    answer += "w(\(a), \(b), \(c)) = \(getNum(a, b, c))\n"
}
print(answer)
