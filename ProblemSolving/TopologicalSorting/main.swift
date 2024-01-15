//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/16.
//

// ACM Craft
// 1005
// Swift 빠른 입출력! 나중에 고치기

import Foundation

//let file = FileIO()

let t = Int(readLine()!)! // 테스트케이스 개수 t


let inputs1 = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = inputs1[0] // 건물 개수 n
let k = inputs1[1] // 건설 순서 규칙 개수 k

var times: [Int] = [0]
var doneTimes: [Int] = Array(repeating: 0, count: n+1)
var adj: [[Int]] = Array(repeating: [], count: n+1)
var indegrees: [Int] = Array(repeating: 0, count: n+1)

let inputs2 = readLine()!.split(separator: " ").map { Int(String($0))! } // 건물당 건설에 걸리는 시간
for time in inputs2 {
    times.append(time)
}
for _ in 0..<k {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = inputs[0]
    let b = inputs[1]
    adj[a].append(b)
    indegrees[b] += 1
}
let finishNode = Int(readLine()!)!

//print(times)
//print(adj)
//print(indegrees)
topologicalSort()
//print(order)
print(doneTimes[finishNode])

func topologicalSort() {
    var queue: [Int] = []
    for i in 1..<n+1 {
        if indegrees[i] == 0 {
            queue.append(i)
            doneTimes[i] = times[i]
        }
    }
    
    while true {
        if queue.isEmpty {
            break
        }
        
        let x = queue.removeFirst()
        
        if x == finishNode {
            break
        }
        
        for y in adj[x] {
            indegrees[y] -= 1
            doneTimes[y] = max(doneTimes[y], doneTimes[x] + times[y])
            if indegrees[y] == 0 {
                queue.append(y)
            }
        }
    }
}

final class FileIO {
    private let buffer:[UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        
        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer[index]
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시

        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
    }

    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시

        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return Array(buffer[beginIndex..<(index-1)])
    }
}
