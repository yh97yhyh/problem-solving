//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/9/24.
//

// 어두운 굴다리
// 17266
// 가로등 최소 높이 출력

import Foundation

let n = Int(readLine()!)! // 굴다리 길이
let m = Int(readLine()!)! // 가로등 개수
let xs = readLine()!.split(separator: " ").map { Int(String($0))! } // 가로등 위치

func binarySearch() -> Int {
    var start = 1
    var end = n
    
    while true {
        if start >= end {
            break
        }
        
        let mid = (start + end) / 2
        if isCovered(mid) {
            end = mid
        } else {
            start = mid + 1
        }
    }
    
    return start
}

func isCovered(_ h: Int) -> Bool {
    var lastCover = 0
    
    for x in xs {
        let left = max(0, x - h)
        let right = x + h
        
        if left > lastCover {
            return false
        }
        
        lastCover = right
    }
    
    return lastCover >= n ? true : false
}

print(binarySearch())


//func binarySearch() {
//    var mid = 0
//    var start = 1
//    var end = n
//    var nextCover = 0
//    var isSatisfied = true
//    
//    while true {
//        if start >= end {
//            break
//        }
//        isSatisfied = true
//        
//        mid = (start + end) / 2
//        
//        if m == 1 {
//            if xs[0] - mid > 0 || xs[0] + mid < n {
//                isSatisfied = false
//            }
//        }
//        
//        
//    }
//}


