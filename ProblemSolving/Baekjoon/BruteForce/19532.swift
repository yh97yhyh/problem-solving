//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/27/24.
//

// 수학은 비대면강의입니다
// 19532

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = inputs[0]
let b = inputs[1]
let c = inputs[2]
let d = inputs[3]
let e = inputs[4]
let f = inputs[5]

for x in -999...999 {
    for y in -999...999 {
        if a*x + b*y == c && d*x + e*y == f {
            print(x, y)
        }
    }
}
