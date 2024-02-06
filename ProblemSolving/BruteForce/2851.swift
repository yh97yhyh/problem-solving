//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/6/24.
//

// 슈퍼 마리오
// 2851

import Foundation

var mushrooms: [Int] = []

for i in 0..<10 {
    mushrooms.append(Int(readLine()!)!)
}

func isCloser() -> Bool {
    if abs(100-sum) <= abs(100-preSum) {
        return true
    } else {
        return false
    }
}

var sum = 0
var preSum = 0
var currentMushroomIndex = 0
var isBreak = false

for i in 0..<10 {
    currentMushroomIndex = i
    sum += mushrooms[i]
    
    if !isCloser() {
        isBreak = true
        break
    }
    
    preSum = sum
}

if isBreak {
    print(sum - mushrooms[currentMushroomIndex])
} else {
    print(sum)
}

//for mushroom in mushrooms {
//    currentMushroom = mushroom
//    sum += mushroom
//    
//    if !isCloser() {
//        break
//    }
//    
//    preSum = sum
//}

//if currentMushroomIndex == 9 {
//    print(sum)
//} else {
//    print(sum - mushrooms[currentMushroomIndex])
//}
