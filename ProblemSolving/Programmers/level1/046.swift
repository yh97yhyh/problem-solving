//
//  046.swift
//  ProblemSolving
//
//  Created by 영현 on 3/11/24.
//

import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photos:[[String]]) -> [Int] {
    var result: [Int] = []
    
    for photo in photos {
        var score = 0
        for friend in photo {
            if let index = name.firstIndex(of: friend) {
                score += yearning[index]
            }
        }
        result.append(score)
    }
    
    return result
}
