//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/11/24.
//

// 카드 뭉치
// https://school.programmers.co.kr/learn/courses/30/lessons/159994
// while을 빠져나가는 조건 순서가 중요하다

import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    let cards1Len = cards1.count
    let cards2Len = cards2.count
    let goalLen = goal.count
    
    var cards1Pointer = 0
    var cards2Pointer = 0
    var goalPointer = 0
    var result: [String] = []
    
    while true {
        if goalPointer == goalLen {
            break
        } else if cards1Pointer == cards1Len {
            for i in cards2Pointer..<cards2Len {
                result.append(cards2[i])
                if result == goal {
                    return "Yes"
                }
                if result.count > goalLen {
                    return "No"
                }
            }
//            print(result)
            return "No"
//            result += cards2.suffix(cards2Len-cards2Pointer)
//            break
        } else if cards2Pointer == cards2Len {
            for i in cards1Pointer..<cards1Len {
                result.append(cards1[i])
                if result == goal {
                    return "Yes"
                }
                if result.count > goalLen {
                    return "No"
                }
            }
//            print(result)
            return "No"
//            result += cards1.suffix(cards1Len-cards1Pointer)
//            break
        }
        
        let a = cards1[cards1Pointer]
        let b = cards2[cards2Pointer]
        let g = goal[goalPointer]
        
        // print(cards1Pointer, cards2Pointer, goalPointer)
        // print(a, b, g)
        
        if a == g {
            result.append(a)
            cards1Pointer += 1
        } else if b == g {
            result.append(b)
            cards2Pointer += 1
        } else {
            return "No"
        }
        
        goalPointer += 1
    }
    
    // print(result)
    if result == goal {
        return "Yes"
    }
    return "No"
}

print(solution(["you", "smarter"], ["think", "more", "will", "be"], ["think", "more", "you", "will", "be", "smarter"])) // -> "Yes
print(solution(["a", "b", "c"], ["d"], ["d", "b"])) // -> "No
print(solution(["list", "length", "important"], ["are", "very"], ["are", "very"])) // -> Yes
