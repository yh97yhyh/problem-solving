//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/28/24.
//

// 대칭 차집합
// 1269

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let aNum = input[0]
let bNum = input[1]

let setA = Set(readLine()!.split(separator: " ").map { Int(String($0))! })
let setB = Set(readLine()!.split(separator: " ").map { Int(String($0))! })

var answer = (setA.subtracting(setB)).count + (setB.subtracting(setA).count)
print(answer)
