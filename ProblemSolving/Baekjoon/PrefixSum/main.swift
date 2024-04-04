//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 4/5/24.
//

// 구간 합 구하기 5
// 11660

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0] // 표의 크기 N (N x N)
let M = input[1] // 합을 구해야하는 횟수 M

var table: [[Int]] = []
for _ in 0..<N {
    let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
    table.append(nums)
}

var sums: [[Int]] = Array(repeating: Array(repeating: 0, count: N+1), count: N+1)

var sum = 0
for i in 1...N {
    for j in 1...N {
        sums[i][j] = table[i-1][j-1] + sums[i-1][j] + sums[i][j-1] - sums[i-1][j-1]
    }
}

var answer = ""
for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let x1 = input[0]
    let y1 = input[1]
    let x2 = input[2]
    let y2 = input[3]
    
    let sum = sums[x2][y2] - sums[x2][y1-1] - sums[x1-1][y2] + sums[x1-1][y1-1]
    answer += "\(sum)\n"
}
print(answer)


//let file = FileIO()
//
//let N = file.readInt() // 표의 크기 N (N x N)
//let M = file.readInt() // 합을 구해야하는 횟수 M
//
//var table: [[Int]] = []
//for _ in 0..<N {
//    var nums: [Int] = []
//    for _ in 0..<N {
//        nums.append(file.readInt())
//    }
//    table.append(nums)
//}
//
//var sums: [[Int]] = Array(repeating: Array(repeating: 0, count: N+1), count: N+1)
//
//var sum = 0
//for i in 1...N {
//    for j in 1...N {
//        sum += table[i-1][j-1]
//        sums[i][j] = sum
//    }
//}
//
//var answer = ""
//for _ in 0..<M {
//    let x1 = file.readInt()
//    let y1 = file.readInt()
//    let x2 = file.readInt()
//    let y2 = file.readInt()
//    
//    var sum = 0
//    if x1 == 1 && y1 == 1 && x2 == N && y2 == N {
//        answer += "\(sums[x2][y2])\n"
//    } else {
//        for x in x1...x2 {
//            if y1 == 1 {
//                sum += (sums[x][y2] - sums[x-1][N])
//            } else {
//                sum += (sums[x][y2] - sums[x][y1-1])
//            }
//        }
//        answer += "\(sum)\n"
//    }
//}
//print(answer)
//
//final class FileIO {
//    private let buffer: Data
//    private var index: Int = 0
//    
//    init(fileHandle: FileHandle = FileHandle.standardInput) {
//        self.buffer = try! fileHandle.readToEnd()! // 인덱스 범위 넘어가는 것 방지
//    }
//    
//    @inline(__always) private func read() -> UInt8 {
//        defer {
//            index += 1
//        }
//        guard index < buffer.count else { return 0 }
//        
//        return buffer[index]
//    }
//    
//    @inline(__always) func readInt() -> Int {
//        var sum = 0
//        var now = read()
//        var isPositive = true
//        
//        while now == 10
//                || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
//        while now >= 48, now <= 57 {
//            sum = sum * 10 + Int(now-48)
//            now = read()
//        }
//        
//        return sum * (isPositive ? 1:-1)
//    }
//    
//    
//    @inline(__always) func readString() -> String {
//        var str = ""
//        var now = read()
//        
//        while now == 10
//                || now == 32 { now = read() } // 공백과 줄바꿈 무시
//        
//        while now != 10
//                && now != 32 && now != 0 {
//            str += String(bytes: [now], encoding: .ascii)!
//            now = read()
//        }
//        
//        return str
//    }
//}
