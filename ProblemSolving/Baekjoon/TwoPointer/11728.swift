//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/25.
//

// 배열 합치기
// 11728

import Foundation

let file = FileIO()

let n = file.readInt() // 배열 A의 크기 N
let m = file.readInt() // 배열 B의 크기 M

var arr1: [Int] = []
var arr2: [Int] = []
for _ in 0..<n {
    arr1.append(file.readInt())
}

for _ in 0..<m {
    arr2.append(file.readInt())
}
//let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
//let n = inputs[0] // 배열 A의 크기 N
//let m = inputs[1] // 배열 B의 크기 M
//let arr1 = readLine()!.split(separator: " ").map { Int(String($0))! }
//let arr2 = readLine()!.split(separator: " ").map { Int(String($0))! }

var mergedArr: [Int] = []
func twoPointer() {
    var i = 0
    var j = 0
    
    while true {
        if i >= n {
            for k in j..<m {
                mergedArr.append(arr2[k])
            }
            break
        }
        if j >= m {
            for k in i..<n {
                mergedArr.append(arr1[k])
            }
            break
        }
        if arr1[i] < arr2[j] {
            mergedArr.append(arr1[i])
            i += 1
        } else {
            mergedArr.append(arr2[j])
            j += 1
        }
    }
}

twoPointer()

var result = ""
for n in mergedArr {
    result += "\(n) "
}
print(result)


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
