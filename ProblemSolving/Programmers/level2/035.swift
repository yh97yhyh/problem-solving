//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/22/24.
//

// 뒤에 있는 큰 수 찾기
// https://school.programmers.co.kr/learn/courses/30/lessons/154539
// 참고 https://clamp-coding.tistory.com/264
// stack을 이용해서 풀어야 시간초과가 안 남

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    let len = numbers.count
    
    var result = Array(repeating: -1, count: len)
    var stack: [Int] = []
    
    for i in 0..<len {
        while true {
            if !stack.isEmpty && numbers[stack.last!] < numbers[i] {
                result[stack.removeLast()] = numbers[i]
            } else {
                break
            }
        }
        stack.append(i)
    }
    
    return result
}

print(solution([2, 3, 3, 5]))
print(solution([9, 1, 5, 3, 6, 2]))
