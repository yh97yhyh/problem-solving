//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/18/24.
//

// 2016년
// https://school.programmers.co.kr/learn/courses/30/lessons/12901

import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let daysOfTheWeeks = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    let days = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
    var day = b
    for i in 0..<a-1 {
        day += days[i]
    }
    
    return daysOfTheWeeks[day%7]
}
