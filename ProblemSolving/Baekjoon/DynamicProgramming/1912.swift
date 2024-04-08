//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/8/24.
//

// 연속합
// 1912
// 카데인 알고리즘으로 풀어야 시간초과 해결
// https://velog.io/@changhee09/%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98-%EC%B9%B4%EB%8D%B0%EC%9D%B8-%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98

import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

var maxEndingHere = nums[0] // 현재까지의 부분 배열의 합
var maxSoFar = nums[0] // 최대 부분 합

for i in 1..<n {
    // 현재 원소와 현재까지의 부분 배열의 합과의 합을 비교하여 큰 값을 취함
    maxEndingHere = max(nums[i], maxEndingHere + nums[i]) // 더할지, 새로 시작할지
    
    // 최대 부분 합을 갱신
    maxSoFar = max(maxSoFar, maxEndingHere)
    print(i, maxEndingHere, maxSoFar)
}

print(maxSoFar)


//var dy = Array(repeating: -1000, count: n)
//
//for i in 0..<n {
//    var cur = nums[i]
//    var curMax = nums[i]
//    for j in i..<n {
//        if j == i {
//            continue
//        } else {
//            cur += nums[j]
//            curMax = max(curMax, cur)
//        }
//    }
//    dy[i] = curMax
//}
//
//print(dy.max()!)
