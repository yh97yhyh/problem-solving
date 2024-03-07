//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 3/7/24.
//

// 문자열 내림차순으로 배치하기
// https://school.programmers.co.kr/learn/courses/30/lessons/12917

import Foundation

func solution(_ s:String) -> String {
    var srr = Array(s).sorted(by: >)
    return String(srr)
}
