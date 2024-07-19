//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/19/24.
//

// 볼 모으기
// 17615
// https://limepencil.tistory.com/16

import Foundation

let file = FileIO()

let n = file.readInt()
let s = file.readString()

func moveBalls(_ ballToMove: Character, _ s: String) -> Int {
    var str = s
    while true {
        if str.first != ballToMove {
            break
        }
        str.removeFirst()
    }
    return str.filter { $0 == ballToMove }.count
}

let minMoves = min(
    moveBalls("R", s), // r -> l
    moveBalls("R", String(s.reversed())), // l -> r
    moveBalls("B", s),
    moveBalls("B", String(s.reversed()))
)

print(minMoves)


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
