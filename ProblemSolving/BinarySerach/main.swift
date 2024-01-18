//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/18.
//

// 듣보잡
// 1764

import Foundation

let inputs =  readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs[0] // 듣도 못한 사람의 수
let m = inputs[1] // 보도 못한 사람의 수

var noListens: [String] = []
var noWatches: [String] = []

for _ in 0..<n {
    noListens.append(readLine()!)
}
for _ in 0..<m {
    noWatches.append(readLine()!)
}

noListens.sort()

var result: [String] = []
func binarySearch(_ arr: [String], _ target: String) {
    var start = 0
    var end = arr.count - 1
    
    while true {
        if start > end {
            break
        }
        let mid = (start + end) / 2
        let compare = arr[mid].compare(target)
        if arr[mid] == target {
            result.append(target)
            break
        } else if compare == .orderedAscending { // target이 뒤
            start = mid + 1
        } else { // target이 앞
            end = mid - 1
        }
    }
}

for noWatch in noWatches {
    binarySearch(noListens, noWatch)
}

result.sort()

print(result.count)
for res in result {
    print(res)
}
