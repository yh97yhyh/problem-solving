//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 핸드폰 번호 가리기
// 12948

import Foundation

func solution(_ phone_number:String) -> String {
    var result = ""
    let len = phone_number.count
    let last = len - 4
    
    
    for i in 0..<last {
        result += "*"
    }
    
    for i in last..<len {
        let index = phone_number.index(phone_number.startIndex, offsetBy: i)
        result += String(phone_number[index])
    }
    
    return result
}
