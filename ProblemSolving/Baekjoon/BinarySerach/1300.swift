//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 6/20/24.
//

// K번째 수
// 1300
// A[i][j] = i * j
// B[k] = x -> x보다 작거나 같은 원소의 갯수가 최소 k개

import Foundation

let n = Int(readLine()!)! // n * n 배열
let k = Int(readLine()!)! // k번째 인덱스 arr[k] (오름차순 정렬)

func binarySearch() -> Int {
    var start = 1
    var end = n * n
    
    while true {
        if start >= end {
            break
        }
        
        let mid = (start + end) / 2
        var count = 0
        
        for i in 1...n {
            count += min(mid / i, n) // 최대 n개여야 함
        }
        
        if count >= k {
            end = mid
        } else {
            start = mid + 1
        }
        
    }
    
    return start
}

print(binarySearch())
