//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/18/24.
//

// 캐시
// https://school.programmers.co.kr/learn/courses/30/lessons/17680

import Foundation

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var result = 0
    var cache: [String] = []
    
    if cacheSize == 0 {
        return cities.count * 5
    }
    
    for originCity in cities {
        let city = originCity.lowercased()
        if cache.contains(city) {
            cache.removeAll { $0 == city }
            cache.append(city)
            result += 1
        } else {
            if cache.count >= cacheSize {
                cache.removeFirst()
            }
            cache.append(city)
            result += 5
        }
    }
    
    return result
}
