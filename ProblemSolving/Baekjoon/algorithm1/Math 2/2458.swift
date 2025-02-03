//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/28/24.
//

// 가로수
// 2458

import Foundation

let N = Int(readLine()!)!

var trees: [Int] = []
var distances: [Int] = []
var cur = 0
for i in 0..<N {
    let tree = Int(readLine()!)!
    trees.append(tree)
    if cur != 0 {
        distances.append(tree - cur)
    }
    cur = tree
}
//print(trees)
//print(distances)

func gcdOfMultiple(_ nums1: [Int]) -> Int {
    var nums = nums1
    var result = nums.removeFirst()
    for num in nums {
        result = gcd(result, num)
    }
    return result
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var n1 = a
    var n2 = b
    
    while n2 != 0 {
        let tmp = n1
        n1 = n2
        n2 = tmp % n2
    }
    
    return abs(n1)
}

let gcd = gcdOfMultiple(distances)

var answer = (trees.last! - trees.first!) / gcd - trees.count + 1
print(answer)
