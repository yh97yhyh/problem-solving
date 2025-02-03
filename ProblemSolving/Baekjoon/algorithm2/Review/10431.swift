//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/5/24.
//

// 줄 세우기
// 10431

import Foundation

let t = Int(readLine()!)!

for n in 1...t {
    var nums = readLine()!.split(separator: " ").map { Int(String($0))! }
    nums.removeFirst()
    var cnt = 0
    
    for i in 0..<20 {
        for j in 0..<19-i {
            if nums[j] > nums[j+1] {
                let tmp = nums[j]
                nums[j] = nums[j+1]
                nums[j+1] = tmp
                cnt += 1
            }
        }
    }
    
    print("\(n) \(cnt)")
}
