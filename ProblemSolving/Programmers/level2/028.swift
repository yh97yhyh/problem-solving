//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/19/24.
//

// 프로세스
// https://school.programmers.co.kr/learn/courses/30/lessons/42587

import Foundation

func solution(_ priorities1:[Int], _ location:Int) -> Int {
    var priorities = priorities1
    var processes = Array(0..<priorities.count)
    var completed: [Int] = []
    
    while true {
        if completed.count == priorities.count {
            break
        }
        
        let curProcess = processes.first!
        let curPriority = priorities.first!
        let maxPrioriry = priorities.max()!
        
        if curPriority >= maxPrioriry {
            completed.append(curProcess)
            print(completed)
            let process = processes.removeFirst()
            processes.append(process)
            let priority = priorities.removeFirst()
            priorities.append(0)
        } else {
            let process = processes.removeFirst()
            processes.append(process)
            let priority = priorities.removeFirst()
            priorities.append(priority)
        }
    }
    
    return completed.firstIndex(of: location)!+1
}

print(solution([2, 1, 3, 2], 2))
print(solution([1, 1, 9, 1, 1, 1], 0))
