//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 8/13/24.
//

// 탑
// 2493

import Foundation

let n = Int(readLine()!)!
let tops = readLine()!.split(separator: " ").map { Int(String($0))! }

var answer = Array(repeating: 0, count: n)
var stack: [Int] = []

for i in 0..<n {
    while true {
        if stack.isEmpty || tops[stack.last!] >= tops[i] {
            break
        }
        stack.removeLast()
    }
    
    if !stack.isEmpty {
        answer[i] = stack.last! + 1
    }
    
    stack.append(i)
}

print(answer.map { String($0) }.joined(separator: " "))

//var answer = ""
//for i in stride(from: n-1, to: 0, by: -1) {
//    var a = 0
//    for j in stride(from: i-1, to: 0, by: -1) {
//        if tops[j] >= tops[i] {
//            a = j+1
//            break
//        }
//    }
//    answer += "\(a) "
//}
//
//answer += "0"
//
//print(String(answer.reversed()))
