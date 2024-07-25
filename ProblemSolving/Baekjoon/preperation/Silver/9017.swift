//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/3/24.
//

// 크로스 컨트리
// 9017
// 한팀에 6명, 팀점수는 상위4명의 주자로 계산, 가장 낮은 점수가 우승
// 점수가 같다면 5번째로 더 먼저 들어온 팀이. ㅜ승

import Foundation

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let result = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    var dict1: [Int: Int] = [:]
    for i in 0..<n {
        let team = result[i]
        if dict1[team] != nil {
            dict1[team]! += 1
        } else {
            dict1[team] = 1
        }
    }
    
    let filtered = Array(dict1.filter( {$0.value >= 6} ).keys)
    var dict2: [Int: (Int, Int, Int)] = [:] // [team: (num, score, 5번째로 통과한사람 등수)]
    var rank = 1
    for i in 0..<n {
        let team = result[i]
        
        if !filtered.contains(team) {
            continue
        }
        
        if dict2[team] != nil {
            if dict2[team]!.0 < 4 {
                dict2[team]!.0 += 1
                dict2[team]!.1 += rank
            } else {
                if dict2[team]!.2 == Int.max && dict2[team]!.0 == 4 {
                    dict2[team]!.2 = rank
                }
                dict2[team]!.0 += 1
            }
        } else {
            dict2[team] = (1, rank, Int.max)
        }
        rank += 1
    }
    
    let sorted = dict2.sorted {
        if $0.value.1 == $1.value.1 {
            return $0.value.2 < $1.value.2
        } else {
            return $0.value.1 < $1.value.1
        }
    }
    
    print(sorted.first!.key)
}

