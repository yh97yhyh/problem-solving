//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/28/24.
//

// 스택 2
// 28278

import Foundation

let N = Int(readLine()!)!

var stack: [Int] = []
for i in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    if input.count == 2 {
        stack.append(input[1])
    } else {
        let com = input[0]
        if com == 2 {
            if !stack.isEmpty {
                print("\(stack.removeLast())")
            } else {
                print("-1")
            }
        } else if com == 3 {
            print("\(stack.count)")
        } else if com == 4 {
            if stack.isEmpty {
               print("1")
            } else {
                print("0")
            }
        } else if com == 5 {
            if !stack.isEmpty {
                print("\(stack.last!)")
            } else {
                print("-1")
            }
        }
    }
}
