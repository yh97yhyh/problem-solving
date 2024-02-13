//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/18.
//

// 1920
// 수 찾기

import Foundation

let n = Int(readLine()!)!
var nNums = readLine()!.split(separator: " ").map { Int(String($0))! } // A
let m = Int(readLine()!)!
var mNums = readLine()!.split(separator: " ").map { Int(String($0))! }

nNums.sort()

func binarySearch(_ arr: [Int], _ target: Int) -> Int {
    var start = 0
    var end = arr.count - 1
    
    while true {
        if start > end {
            break
        }
        let mid = (start + end) / 2
        if arr[mid] == target {
            return 1
        } else if arr[mid] > target {
            end = mid - 1
        } else if arr[mid] < target {
            start = mid + 1
        }
    }
    return 0
}

for mNum in mNums {
    print(binarySearch(nNums, mNum))
}
