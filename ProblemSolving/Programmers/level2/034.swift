//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/22/24.
//

// 모음사전
// https://school.programmers.co.kr/learn/courses/30/lessons/84512
// 참고 : https://school.programmers.co.kr/questions/69437

import Foundation

func solution(_ word:String) -> Int {
    let letters = ["A", "E", "I", "O", "U"]
    var words: [String] = []
    
    func dfs(_ cur: String, _ depth: Int) {
        if depth <= 5 {
            words.append(cur)

            for letter in letters {
                dfs(cur+letter, depth + 1)
            }
        }
    }
    
    dfs("", 0)
    
    return words.firstIndex(of: word)!
}


print(solution("AAAAE"))
print(solution("AAAE"))
print(solution("I"))
print(solution("EIO"))
