//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/8/24.
//

// 짝지어 제거하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12973
// 괄호 확인 문제랑 비슷하게 stack으로 풀면 됨

import Foundation

func solution(_ s :String) -> Int{
    var chars: [Character] = []
    
    for char in s {
        if !chars.isEmpty && chars.last == char {
            chars.removeLast() // popLast()는 시간초과
            continue
        }
        chars.append(char)
    }
    
    return chars.isEmpty ? 1 : 0
}
