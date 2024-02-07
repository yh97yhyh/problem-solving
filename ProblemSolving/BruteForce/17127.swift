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
let len = flowers.count

var currentMax = 0
for i in 1...len-3 {
    for j in i+1...len-2 {
        for k in j+1...len-1 {
            let arr1 = flowers[0..<i]
            let arr2 = flowers[i..<j]
            let arr3 = flowers[j..<k]
            let arr4 = flowers[k..<len]
            let sum1 = arr1.reduce(1, *)
            let sum2 = arr2.reduce(1, *)
            let sum3 = arr3.reduce(1, *)
            let sum4 = arr4.reduce(1, *)
            var sum = sum1 + sum2 + sum3 + sum4
            if currentMax < sum {
                currentMax = sum
            }
        }
    }
}

print(currentMax)
