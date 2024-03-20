//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/20/24.
//

// 소수 찾기
// https://school.programmers.co.kr/learn/courses/30/lessons/12921
// https://developer-eddy403.tistory.com/77

import Foundation

func solution(_ n:Int) -> Int {
    var check = Array(repeating: 0, count: n+1)
    var cnt = 0

    for i in 2...n {
        // 1. 이미 확인된 배열인지 확인 (= 소수일 때)
        if check[i] == 0 {
            // 2. 확인한 갯수 카운팅 (= 갯수 증가)
            cnt += 1
            
            // 3. i의 배수인 배열의 인덱스를 1로 수정 (= 합성수 제거)
            for j in stride(from: i, to: n+1, by: i) {
                check[j] = 1
            }
        }
    }
//    print(check)

    return cnt
}
