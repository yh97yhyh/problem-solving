//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/13/24.
//

// 비슷한 단어
// 2607
// 반례 https://www.acmicpc.net/board/view/136901

import Foundation

let n = Int(readLine()!)!
var answer = 0

let target = Array(readLine()!)

for _ in 1..<n {
    let compare = Array(readLine()!)
    
    if abs(target.count - compare.count) > 1 {
        continue
    }
    
    var targetChecked = Array(repeating: false, count: target.count)
    var compareChecked = Array(repeating: false, count: compare.count)
    
    // target을 기준으로 문자 매칭
    for i in 0..<target.count {
        let t = target[i]
        
        for j in 0..<compare.count {
            let c = compare[j]
            if t == c && compareChecked[j] == false {
                targetChecked[i] = true
                compareChecked[j] = true
                break
            }
        }
    }
    
    // 매칭되지 않는 문자 갯수
    let targetFalseCount = targetChecked.filter { $0 == false }.count
    let compareFalseCount = compareChecked.filter { $0 == false }.count
    
    // 비슷한 단어 조건 검사
    if compareFalseCount <= 1 {
        if (targetFalseCount == compareFalseCount) || (targetFalseCount == 0 || compareFalseCount == 0) {
            answer += 1
        }
    }
}

print(answer)
