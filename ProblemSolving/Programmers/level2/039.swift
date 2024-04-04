//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/4/24.
//

// 땅따먹기
// https://school.programmers.co.kr/learn/courses/30/lessons/12913
// https://velog.io/@younge/Python-%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4-%EB%95%85%EB%94%B0%EB%A8%B9%EA%B8%B0-%EC%97%B0%EC%8A%B5%EB%AC%B8%EC%A0%9CLevel2

import Foundation

func solution(_ land:[[Int]]) -> Int{
    var dy = land
    let len = land.count
    
    for i in 1..<len {
        dy[i][0] += max(dy[i-1][1], dy[i-1][2], dy[i-1][3])
        dy[i][1] += max(dy[i-1][0], dy[i-1][2], dy[i-1][3])
        dy[i][2] += max(dy[i-1][0], dy[i-1][1], dy[i-1][3])
        dy[i][3] += max(dy[i-1][0], dy[i-1][1], dy[i-1][2])
    }
    
    return dy[len-1].max()!
}

print(solution([[1,2,3,5],[5,6,7,8],[4,3,2,1]]))
