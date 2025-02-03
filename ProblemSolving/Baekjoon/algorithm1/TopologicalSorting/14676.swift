//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/26.
//

// 14676
// 영우는 사기꾼

import Foundation

let file = FileIO()

struct Game {
    var buildOrDestroy: Int
    var buildingNum: Int
}

//let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
//let n = inputs[0] // 건물 종류의 개수
//let m = inputs[1] // 건물 사이 관계의 개수
//let k = inputs[2] // 영우의 게임 정보 개수

let n = file.readInt() // 건물 종류의 개수
let m = file.readInt() // 건물 사이 관계의 개수
let k = file.readInt() // 영우의 게임 정보 개수


var buildings: [[Int]] = Array(repeating: [], count: n+1)
var indegrees: [Int] = Array(repeating: 0, count: n+1)
var buildingCounts: [Int] = Array(repeating: 0, count: n+1)
var buildingBuildSatisfactions: [Int] = Array(repeating: 0, count: n+1)

for _ in 0..<m {
//    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
//    let x = inputs[0]
//    let y = inputs[1] // x를 건설해야 y를 건설할 수 있다
    let x = file.readInt()
    let y = file.readInt()
    buildings[x].append(y)
    indegrees[y] += 1
}

//
//var youngwooGames: [Game] = []
//for _ in 0..<k {
////    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
////    youngwooGames.append(Game(buildOrDestroy: inputs[0], buildingNum: inputs[1]))
//    let buildOrDestroy = file.readInt()
//    let buildingNum = file.readInt()
//    youngwooGames.append(Game(buildOrDestroy: buildOrDestroy, buildingNum: buildingNum))
//}

func checkCheat() -> Bool {
    var i = k
    var isCheat = false
    
    while true {
        if i <= 0 {
            break
        }
        
//        let game = youngwooGames.removeFirst()
//        let buildOrDestroy = game.buildOrDestroy
//        let x = game.buildingNum
        let buildOrDestroy = file.readInt()
        let x = file.readInt()

        
        if buildOrDestroy == 1 {
            // x의 선행건물이 지어졌는지 확인
            if buildingBuildSatisfactions[x] < indegrees[x] {
                isCheat = true
                break
            }
            
            buildingCounts[x] += 1
            
            // x가 처음 지어진 것이라면 x가 영향을 주는 건물들에 "너희의 선행 건물 중 하나가 처음 지어졌어" 라고 알려주기
            if buildingCounts[x] == 1 {
                for y in buildings[x] {
                    buildingBuildSatisfactions[y] += 1
                }
            }
            
        } else {
            // x라는 건물이 한 개 이상 지어져있는지 확인하기
            if buildingCounts[x] == 0 {
                isCheat = true
                break
            }
            
            buildingCounts[x] -= 1
            
            // x가 더 이상 남아있지 않다면 "너희의 선행 건물 중 하나가 사라졌어" 라고 알려주기
            if buildingCounts[x] == 0 {
                for y in buildings[x] {
                    buildingBuildSatisfactions[y] -= 1
                }
            }
        }
        
        i -= 1
    }
    
    return isCheat
}

if checkCheat() {
    print("Lier!")
} else {
    print("King-God-Emperor")
}


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

