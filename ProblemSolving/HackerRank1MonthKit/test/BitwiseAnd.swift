//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/13/24.
//

// Bitwise AND
// 시간 초과 케이스 있음

import Foundation

func countPairs(arr: [Int]) -> Int {
    // Write your code here
    var count = 0
    let len = arr.count
    
    for i in 0..<len-1 {
        for j in i..<len {
            if i == j {
                continue
            }
            
            if checkPowerOf2(arr[i], arr[j]) {
                count+=1
            }
        }
    }
    
    return count
}

func checkPowerOf2(_ a: Int, _ b: Int) -> Bool {
    let res = a & b
    if res == 0 {
        return false
    }
    return (res & (res-1)) == 0
}


let test1 = [1, 2, 1, 3]
let test2 = [0, 2, 4]

print(countPairs(arr: test1))
