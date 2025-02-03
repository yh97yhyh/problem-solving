//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/28/24.
//

// 도키도키 간식드리미
// 12789
// 문제 이해를 잘못했나

import Foundation

let N = Int(readLine()!)!

var stack: [Int] = []
var order = 1
let ns = readLine()!.split(separator: " ").map { Int(String($0))! }
for n in ns {
    if n == order {
        order += 1
    } else {
        stack.append(n)
    }
}

print(stack)

var isNice = true
for i in 0..<stack.count {
    if i != 0 {
        if stack[i-1] < stack[i]  {
            isNice = false
            break
        }
    }
}
print(isNice ? "Nice" : "Sad")
