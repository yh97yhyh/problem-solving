//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/10.
//

// 연산자 끼워넣기
// 14888

import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
let operators = readLine()!.split(separator: " ").map { Int(String($0))! }

var remainOperators = operators

var maxVal = Int.min
var minVal = Int.max

calculate(nums[0], 1)

print(maxVal)
print(minVal)

func calculate(_ value: Int, _ index: Int) {
    if index == n {
        maxVal = max(value, maxVal)
        minVal = min(value, minVal)
        return
    }
    
    for i in 0..<4 {
        if remainOperators[i] == 0 {
            continue
        }
        
        remainOperators[i] -= 1
        var result = value
        
        switch i {
        case 0:
            result += nums[index]
        case 1:
            result -= nums[index]
        case 2:
            result *= nums[index]
        case 3:
            result /= nums[index]
        default:
            break
        }
        
        calculate(result, index + 1)
        remainOperators[i] += 1
    }
}




