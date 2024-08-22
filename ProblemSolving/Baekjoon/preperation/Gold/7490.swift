//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 8/22/24.
//

// 0 만들기
// 7940
// 1부터 N까지

import Foundation

let t = Int(readLine()!)!

var cur = ""
var results: [String] = []
var answer = ""

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    recur(n, 2, "1")
    
    results.sort(by: <)
    for r in results {
        answer += "\(r)\n"
    }
    answer += "\n"
    results = []
}

print(answer)

func recur(_ n: Int, _ curNum: Int, _ curExpression: String) {
    if curNum > n {
        if isVallid(curExpression) {
            results.append(curExpression)
        }
        return
    }
    
    recur(n, curNum+1, curExpression + "+\(curNum)")
    recur(n, curNum+1, curExpression + "-\(curNum)")
    recur(n, curNum+1, curExpression + " \(curNum)")
}

func isVallid(_ str: String) -> Bool { // 문자열 연산 법!
//    var s = str
//    let removedFirst = String(s.dropFirst())
    let removedSpace = str.replacingOccurrences(of: " ", with: "")
    
    var stack: [Int] = []
    var nums = removedSpace.split(whereSeparator: { !$0.isNumber })
    var opers = removedSpace.split(whereSeparator : { $0.isNumber })
    
    var i = 0
    
    for x in nums {
        if stack.isEmpty {
            stack.append(Int(x)!)
        } else {
            let last = stack.removeLast()
            if opers[i] == "+" {
                stack.append(last+Int(x)!)
            } else {
                stack.append(last-Int(x)!)
            }
            i += 1
        }
    }
    
    return stack.last == 0 ? true : false
}
