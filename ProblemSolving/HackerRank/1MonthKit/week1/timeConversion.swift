//
//  timeConversion.swift
//  ProblemSolving
//
//  Created by 영현 on 2/14/24.
//

// Time Conversion
// https://www.hackerrank.com/challenges/one-month-preparation-kit-time-conversion/problem

import Foundation

func timeConversion(s: String) -> String {
    // Write your code here
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa"
    
    let newDateFormatter = DateFormatter()
    newDateFormatter.dateFormat = "HH:mm:ss"
    
    if let date = dateFormatter.date(from: s) {
        let result = newDateFormatter.string(from: date)
        return result
    }
    
    return ""
}
