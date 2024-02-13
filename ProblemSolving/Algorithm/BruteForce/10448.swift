//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/6/24.
//

// 유레카 이론
// 10448

import Foundation

let t = Int(readLine()!)!

var isValid = 0
var target = 0
var nums: [Int] = []
var tris: [Int] = []
func recur() {
    if nums.count == 3 {
        if nums.reduce(0, +) == target {
//            print(nums)
            isValid = 1
        }
        return
    }
    
    for n in tris {
        if nums.count >= 3 || (nums.count > 0 && nums.last! > n) {
            continue
        }
        nums.append(n)
        recur()
        nums.popLast()
    }
}

for _ in 0..<t {
    let num = Int(readLine()!)!
    
    var triNums: [Int] = [1]
    
    var tri = 2
    var sum = 1
    while triNums.last! <= num {
        sum = sum + tri
        triNums.append(sum)
        tri += 1
    }
    
    tris = triNums
//    print(tris)
    isValid = 0
    target = num
    nums = []
    recur()
    print(isValid)
//    print("=============")
}

