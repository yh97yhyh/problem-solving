//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/15/24.
//

// IF문좀 대신 써줘
// 19637
// 가능한 칭호가 여러 개인 경우 가장 먼저 입력된 칭호 하나만 출력

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // 칭호 개수
let m = input[1] // 칭호를 출력해야 하는 캐릭터 개수

var titles: [String] = []
var scores: [Int] = []
var nums: [Int] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let title = String(input[0])
    let num = Int(String(input[1]))!
    titles.append(title)
    scores.append(num)
}

// 캐릭터의 전투력보다 큰 상한값을 가진 칭호중 첫번째 -> upperbound
func binarySearch(_ target: Int) -> Int {
    var start = 0
    var end = n - 1
    
    while true {
        if start >= end {
            break
        }
        
        let mid = (start + end) / 2
        
        if scores[mid] < target {
            start = mid + 1
        } else {
            end = mid
        }
    }
    
    return start
}

var answer = ""
for _ in 0..<m {
    let i = binarySearch(Int(readLine()!)!)
    answer += "\(titles[i])\n"
}
print(answer)

//func binarySearch(_ s: Int, _ target: Int) -> Int {
//    var start = s
//    var end = nums.count - 1
//    
//    while true {
//        if start >= end {
//            break
//        }
//        
//        let mid = (start + end) / 2
//        
//        if nums[mid] <= target {
//            start = mid + 1
//        } else {
//            end = mid
//        }
//    }
//    
//    if nums[start] == target {
//        start += 1
//    }
//    
//    return start
//}
//
//var preT = -1
//var s = 0
//for i in 0..<n {
//    let t = scores[i]
//    if preT == t {
//        continue
//    }
//    let n = binarySearch(s, t)
//    
//    for _ in s..<n {
//        print(titles[i])
//    }
//    
//    preT = t
//    s = n
//}
