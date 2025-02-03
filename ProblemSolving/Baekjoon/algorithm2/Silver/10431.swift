//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 6/25/24.
//

// 줄세우기
// 10431

import Foundation

let p = Int(readLine()!)!

for t in 1...p {
    var students = readLine()!.split(separator: " ").map { Int(String($0))! }
    students.removeFirst()
    
    var count = 0
    
    for i in 0..<19 {
        for j in i+1..<20 {
            if students[i] > students[j] {
                students.swapAt(i, j)
                count += 1
            }
        }
    }
    
    print("\(t) \(count)")
}


