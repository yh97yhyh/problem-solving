//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/28/24.
//

// 균형잡힌 세상
// 4949

import Foundation

while true {
    let str = readLine()!
    if str == "." {
        break
    }
    
    var stack1: [Int] = []
    var stack2: [Int] = []
    var lastStack: [Character] = []
    var isYes = true
    for c in str {
        switch c {
        case "(":
            stack1.append(1)
            lastStack.append("(")
        case "[":
            stack2.append(1)
            lastStack.append("[")
        case ")":
            if !stack1.isEmpty && lastStack.last == "(" {
                stack1.removeLast()
                lastStack.removeLast()
            } else {
                isYes = false
                break
            }
        case "]":
            if !stack2.isEmpty && lastStack.last == "[" {
                stack2.removeLast()
                lastStack.removeLast()
            } else {
                isYes = false
                break
            }
        default:
            continue
        }
    }
    
    print(isYes && stack1.isEmpty && stack2.isEmpty ? "yes" : "no")
}
