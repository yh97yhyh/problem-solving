//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/28/24.
//

// 최소공배수
// 13241

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = input[0]
let b = input[1]

func gcd(_ a: Int, _ b: Int) -> Int {
    var n1 = a
    var n2 = b
    
    while n2 != 0 {
        let tmp = n1
        n1 = n2
        n2 = tmp % n2
    }
    
    return abs(n1)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

print(lcm(a, b))
