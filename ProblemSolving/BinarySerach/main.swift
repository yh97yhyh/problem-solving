//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/21.
//

// 숫자 카드 2
// 10816
// lower bound & upper bound
// https://hee96-story.tistory.com/80

import Foundation

let n = Int(readLine()!)! // 숫자 카드 개수
var cards =  readLine()!.split(separator: " ").map { Int(String($0))! }
let m = Int(readLine()!)!
var targets =  readLine()!.split(separator: " ").map { Int(String($0))! }

cards.sort()

var result = ""

// target보다 같거나 큰 값이 처음 나오는 위치의 인덱스 리턴
func lowerBound(_ target: Int) -> Int {
    var start = 0
    var end = cards.count - 1

    while true {
        if start >= end {
            break
        }
        let mid = (start + end) / 2
        if cards[mid] >= target {
            end = mid
        } else {
            start = mid + 1
        }
    }
    return start
}

// target보다 큰 값이 처음 나오는 위치의 인덱스 리턴
func upperBound(_ target: Int) -> Int {
    var start = 0
    var end = cards.count - 1

    while true {
        if start >= end {
            break
        }
        let mid = (start + end) / 2
        if cards[mid] <= target {
            start = mid + 1
        } else {
            end = mid
        }
    }
    
    if cards[start] == target {
        return start + 1
    }
    return start
}


//func search(_ target: Int) {
//    var count = 0
//    for i in 0..<cards.count {
//        if cards[i] == target {
//            count += 1
//        }
//        if cards[i] > target || i == cards.count-1 {
//            result += "\(count) "
//            break
//        }
//    }
//}

for target in targets {
    let lowerIndex = lowerBound(target)
    let upperIndex = upperBound(target)
    result += "\(upperIndex - lowerIndex) "
}
print(result)
