//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/02/04.
//

// 벚꽃이 정보섬에 피어난 이유
// 17127

import Foundation

let n = Int(readLine()!)!
let flowers = readLine()!.split(separator: " ").map { Int(String($0))! }
let multiplyMaxCount = n-3

func cal(_ x: Int) -> Int {
    var sum = 0
    var multiplySum = 1
    
    for i in 0..<n {
        if i >= x && i < x+multiplyMaxCount {
            multiplySum *= flowers[i]
        } else {
            sum += flowers[i]
        }
    }
    
    return sum + multiplySum
}

var maxSum = 0
for i in 0..<n-3 {
    maxSum = max(maxSum, cal(i))
}
print(maxSum)

