//
//  003.swift
//  ProblemSolving
//
//  Created by 영현 on 3/26/24.
//

// 단어 변환
// https://school.programmers.co.kr/learn/courses/30/lessons/43163

import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    if !words.contains(target) {
        return 0
    }
    let targetIndex = words.firstIndex(of: target)!
    let len = words.count
    var graph: [[Int]] = Array(repeating: [], count: len)
    var starts: [Int] = []
    var answers: [Int] = []
    
    for i in 0..<len {
        for j in 0..<len {
            if i == j {
                continue
            }
            if checkPossible(words[i], words[j]) {
                graph[i].append(j)
                // graph[j].append(i)
            }
        }
        if checkPossible(begin, words[i]) {
            starts.append(i)
        }
    }
    // print(graph)
    
    func bfs(_ start: Int) -> Int {
        var dist = Array(repeating: -1, count: len)

        var toVisits: [Int] = []
        toVisits.append(start)
        dist[start] = 1
        
        while true {
            if toVisits.isEmpty {
                break
            }
            
            let x = toVisits.removeFirst()
            if x == targetIndex {
                break
            }
            
            for y in graph[x] {
                if dist[y] == -1 {
                    toVisits.append(y)
                    dist[y] = dist[x] + 1
                }
            }
        }
        
        return dist[targetIndex]
    }
    
    for start in starts {
        answers.append(bfs(start))
    }
    
    if answers.isEmpty {
        return 0
    } else {
        return answers.min()!
    }
}

func checkPossible(_ str1: String, _ str2: String) -> Bool {
    var diffCount = 0
    
    for (char1, char2) in zip(str1, str2) {
        if char1 != char2 {
            diffCount += 1
        }
        
        if diffCount > 1 {
            return false
        }
    }
    
    return diffCount == 1
}
