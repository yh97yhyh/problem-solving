//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/21.
//

// 두 수의 합
// 3273

import Foundation

let n = Int(readLine()!)! // 수열의 크기
var sequence =  readLine()!.split(separator: " ").map { Int(String($0))! }
let x = Int(readLine()!)! // a + b = X

sequence.sort()

var result = 0
func binarySearch(_ num: Int, _ target: Int) {
    var start = 0
    var end = sequence.count - 1
    
    while true {
        if start > end {
            break
        }
        let mid = (start + end) / 2
        if num + sequence[mid] == target {
            result += 1
            break
        } else if num + sequence[mid] < target {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
}

for num in sequence {
    binarySearch(num, x)
}
print(result / 2)
