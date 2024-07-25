//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/13/24.
//

// 가희와 키워드
// 22233

import Foundation

let file = FileIO()

//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let n = input[0] // 메모장에 적은 키워드 개수
//let m = input[1] // 블로그에 쓴 글의 개수
let n = file.readInt()
let m = file.readInt()

var keywords: [String: Int] = [:]
var count = n
//var answer = ""
var results: [String] = []

for _ in 0..<n {
    let str = file.readString()
//    let str = readLine()!
    keywords[str] = 1
}

for _ in 0..<m {
    let strs = file.readString().split(separator: ",")
//    let strs = readLine()!.split(separator: ",")
    for str in strs {
        let s = String(str)
        if keywords[s] == 1 {
            keywords[s] = 0
            count -= 1
        }
    }
//    answer += "\(count)\n"
    results.append("\(count)")
}

//print(answer)
print(results.joined(separator: "\n"))

final class FileIO {
    private let buffer: Data
    private var index: Int = 0
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        self.buffer = try! fileHandle.readToEnd()! // 인덱스 범위 넘어가는 것 방지
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer {
            index += 1
        }
        guard index < buffer.count else { return 0 }
        
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
        var str = ""
        var now = read()
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        
        while now != 10
                && now != 32 && now != 0 {
            str += String(bytes: [now], encoding: .ascii)!
            now = read()
        }
        
        return str
    }
}
