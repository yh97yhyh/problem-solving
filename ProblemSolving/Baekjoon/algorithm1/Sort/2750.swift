//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/27/24.
//

// 수 정렬하기
// 2750

import Foundation

var nums: [Int] = []
let N = Int(readLine()!)!

for i in 0..<N {
    nums.append(Int(readLine()!)!)
}

nums.sort()

for num in nums {
    print(num)
}
