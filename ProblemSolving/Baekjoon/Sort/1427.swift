//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/27/24.
//

// 소트인사이드
// 1427

import Foundation

var nums = String(readLine()!).compactMap { Int(String($0)) }
nums.sort(by: >)

var answer = ""
for num in nums {
    answer += String(num)
}
print(answer)
