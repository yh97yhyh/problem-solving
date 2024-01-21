//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/21.
//

// 랜선 자르기
// 1654

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0]
let k = inputs[1] // 1 < k <= 10000

var cables: [Int] = []
var sum = 0
for _ in 0..<n {
    let cable = Int(readLine()!)!
    cables.append(cable)
    sum += cable
}

var corrects: [Int] = []
func binarySearch(_ target: Int) -> Int{
    var start = 1
    var end = sum / target
    var mid = 0
//    var count = Int.max
    while true {
        if start > end {
            break
        }
//        count = 0
        mid = (start + end) / 2
        let count = cables.map { $0 / mid }.reduce(0, +)
        if count >= target {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    return end
}

print(binarySearch(k))
