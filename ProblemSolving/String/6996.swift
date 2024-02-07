//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2/7/24.
//

// 애너그램
// 6996

import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let strs = readLine()!.split(separator: " ")
    let a = strs[0]
    let b = strs[1]
    
    if a.count == b.count {
        if a.sorted() == b.sorted() {
            print("\(a) & \(b) are anagrams.")
        } else {
            print("\(a) & \(b) are NOT anagrams.")
        }
    } else {
        print("\(a) & \(b) are NOT anagrams.")
    }
    
}
