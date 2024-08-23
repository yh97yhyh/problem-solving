//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 8/23/24.
//

// 인구 이동
// 16234

/*
 국경선을 공유하는 두 나라의 인구 차이가 l명 이상 r명 이하라면, 두 나라가 공유하는 국경선을 오늘 하루동안 연다
 국경선이 열려있으면 하루동안 연합이라고 한다
 연합을 이루고 있는 각 칸의 인구수는 (연합의 긴구수 / 연합을 이루고 있는 칸의 개수) 소숫점 버림
 연합을 해체하고 국경선을 닫는다
 
 인구이동이 며칠동안?
 
 */

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0] // n x n 크기의 땅
let l = input[1] // l ~ r
let r = input[2]

var land = Array(repeating: Array(repeating: 0, count: n), count: n)
var visited = Array(repeating: Array(repeating: false, count: n), count: n)
let directions: [(Int, Int)] = [(-1, 0), (1, 0), (0, -1), (0, 1)]

for i in 0..<n {
    // r행 c열
    let input2 = readLine()!.split(separator: " ").map { Int(String($0))! }
    for j in 0..<n {
        land[i][j] = input2[j]
    }
}

func isInBounds(_ x: Int, _ y: Int) -> Bool {
    return x >= 0 && x < n && y >= 0 && y < n
}

// 연합 인구수, 연합 크기, 연합 좌표들
func bfs(_ startX: Int, startY: Int) -> (Int, Int, [(Int, Int)]) {
    var queue = [(startX, startY)]
    var unions = [(startX, startY)]
    var population = land[startX][startY]
    visited[startX][startY] = true
    
    while true {
        if queue.isEmpty {
            break
        }
        
        let (x, y) = queue.removeFirst()
        
        for (dx, dy) in directions {
            let newX = x + dx
            let newY = y + dy
            
            if isInBounds(newX, newY) && !visited[newX][newY] {
                let diff = abs(land[x][y] - land[newX][newY])
                
                if diff >= l && diff <= r {
                    queue.append((newX, newY))
                    unions.append((newX, newY))
                    population += land[newX][newY]
                    visited[newX][newY] = true
                }
            }
        }
    }
    
    return (population, unions.count, unions)
}

var day = 0

while true {
    var isMoved = false
    visited = Array(repeating: Array(repeating: false, count: n), count: n)
    
    for i in 0..<n {
        for j in 0..<n {
            if visited[i][j] {
                continue
            }
            
            let (population, countryCount, unions) = bfs(i, startY: j)
            
            if countryCount > 1 {
                isMoved = true
                let newPopulation = population / countryCount
                
                for (x, y) in unions {
                    land[x][y] = newPopulation
                }
            }
        }
    }
    
    if !isMoved {
        break
    }
    
    day += 1
}

print(day)
