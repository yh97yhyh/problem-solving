//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 최솟값 만들기
// https://school.programmers.co.kr/learn/courses/30/lessons/12941
// 간단하게 A는 오름차순, B는 내림차순으로 정렬한 후 인덱스 순서대로 계산하면 된다

func solution(_ A:[Int], _ B:[Int]) -> Int {
    var ans = 0
    var arr = A.sorted()
    var brr = B.sorted(by: >)
    
    for i in 0..<arr.count {
        ans += arr[i] * brr[i]
    }

    return ans
}
