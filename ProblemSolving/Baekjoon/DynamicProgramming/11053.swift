//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/9/24.
//

// 가장 긴 증가하는 부분 수열
// 11053
// LIS 알고리즘 https://velog.io/@min-ji99/%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98%EA%B0%80%EC%9E%A5-%EA%B8%B4-%EC%A6%9D%EA%B0%80%ED%95%98%EB%8A%94-%EB%B6%80%EB%B6%84%EC%88%98%EC%97%B4LIS-%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98

import Foundation

let N = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
var dp = Array(repeating: 1, count: N)

for i in 1..<N {
    for j in 0..<i {
        if nums[i] > nums[j] {
            dp[i] = max(dp[i], dp[j]+1)
        }
    }
}

print(dp.max()!)
