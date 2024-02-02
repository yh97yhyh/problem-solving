//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/02/02.
//

// 어두운 굴다리
// 17266
// 높이는 정수

import Foundation

let n = Int(readLine()!)! // 굴다리 길이 N
let m = Int(readLine()!)! // 가로등 개수 M
let xs = readLine()!.split(separator: " ").map { Int(String($0))! } // 설치할 수 있는 가로등의 위치 x

func binarySearch() -> Int {
    var mid = 0
    var start = 1
    var end = n
    var nextCover = 0
    var isSatisfied = true
    
    while true {
        if start >= end {
            break
        }
        isSatisfied = true

        mid = (start + end) / 2
        
        if m == 1 {
            if xs[0] - mid > 0 || xs[0] + mid < n {
                isSatisfied = false
            }
        } else {
            for i in 0..<m {
                if i == 0 { // 첫번째 위치
                    if xs[i] - mid <= 0 {
                         nextCover = xs[i] + mid
                    } else {
                        isSatisfied = false
                        break
                    }
                } else if i == m-1 { // 마지막 위치
                    if xs[i] + mid < n {
                        isSatisfied = false
                        break
                    }
                    if xs[i] - mid > nextCover {
                        isSatisfied = false
                        break
                    }
                } else { // 중간 위치
                    if xs[i] - mid > nextCover {
                        isSatisfied = false
                        break
                    } else {
                        nextCover = xs[i] + mid
                    }
                }
            }
        }
        
//        print(mid, isSatisfied)
        
        if isSatisfied {
            end = mid
        } else {
            start = mid + 1
        }
        
    }
    
    return isSatisfied ? mid : mid + 1
}

print(binarySearch())
