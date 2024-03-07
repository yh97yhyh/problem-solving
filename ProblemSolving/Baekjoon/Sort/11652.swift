//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/11.
//

// 카드
// 11652

import Foundation

let n = Int(readLine()!)!
var nums: [Int64] = []

for i in 0..<n {
    nums.append(Int64(readLine()!)!)
}

var checkedNums: [Int64: Int64] = [:]
for i in 0..<n {
    if !checkedNums.keys.contains(nums[i]) {
        checkedNums[nums[i]] = 1
    } else {
        checkedNums[nums[i]]! += 1
    }
}

let sortedCheckedNums = checkedNums.sorted {
    if $0.value == $1.value {
        return $0.key < $1.key
    } else {
        return $0.value > $1.value
    }
}

//let resultDict = Dictionary(uniqueKeysWithValues: sortedCheckedNums)

//print(sortedCheckedNums)
print(sortedCheckedNums.first!.key)
