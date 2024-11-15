//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 11/15/24.
//

// 탑
// 2493
// 어느 탑에서 수신하는지
// 더 높은 탑을 만나면 이전 탑은 더 이상 필요하지 않으므로 제거한다

import Foundation

let n = Int(readLine()!)!
let tops = readLine()!.split(separator: " ").map { Int(String($0))! }

var answer = Array(repeating: 0, count: n)
var stack: [Int] = []

for i in 0..<n {
    let curH = tops[i]
    
    while true {
        if stack.isEmpty || tops[stack.last!] >= curH {
            break
        }
        stack.removeLast()
    }
    
    if !stack.isEmpty {
        answer[i] = stack.last! + 1
    }
    
    stack.append(i)
}

//for i in 0..<n {
//    while true {
//        if stack.isEmpty || tops[stack.last!] >= tops[i] {
//            break
//        }
//        stack.removeLast()
//    }
//    
//    if !stack.isEmpty {
//        answer[i] = stack.last! + 1
//    }
//    
//    stack.append(i)
//}

print(answer.map { String($0) }.joined(separator: " "))
