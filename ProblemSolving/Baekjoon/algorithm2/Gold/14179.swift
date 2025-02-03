//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 8/14/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let h = input[0]
let w = input[1]

let blocks = readLine()!.split(separator: " ").map { Int(String($0))! }

var answer = 0

for i in 1..<w-1 {
    let left = blocks[0...i].max() ?? 0 // 왼쪽 최대 높이
    let right = blocks[i+1..<w].max() ?? 0 // 오른쪽 최대 높이
    let m = min(left, right) // 양쪽 최대 높이 중 최소값
    if m > blocks[i] {
        answer += m - blocks[i]
    }
}

print(answer)

//for i in 1..<w {
//    let curHeight = blocks[i]
//    
//    if curHeight > blocks[curStart] {
//        curStart = curHeight
//        
//        if i - curStart > 2 {
//            for j in curStart+1..<i {
//                waters[j] += 1
//            }
//        }
//    }
//}

//for i in 1..<w {
//    let curHeight = blocks[i]
//    
//    if curHeight >= blocks[curStart] || i == w-1 {
//        curEnd = i
//        var waterHeight = blocks[curStart]
//        if curEnd == w-1 && blocks[curStart] > blocks[curEnd] {
//            waterHeight = blocks[curEnd]
//        }
//        
//        if curEnd - curStart == 1 {
//            curStart = curEnd
//            continue
//        }
//        
//        for j in curStart+1..<curEnd {
//            let blockHeight = blocks[j]
//            answer += waterHeight - blockHeight
//            print("\(j) : \(waterHeight - blockHeight)")
//        }
//        
//        curStart = curEnd
//    }
//}
