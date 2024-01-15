//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/15.
//

// 탈출
// 3055

// 비어있는곳 .
// 물이차있는곳 *
// 돌 X
// 비버의굴 D
// 고슴도치위치 S

// 고슴도치 상하좌우 이동
// 물 상하좌우 확장
// 고슴도치는 물(*) 이동 불가
// 물은 비버의 소굴(D) 이동 불가
// 고슴도치는 비버의굴로 탈출

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
let r = inputs[0] // <= 50 행
let c = inputs[1] // <= 50 열
var graph: [[String]] = []

for _ in 0..<r {
    graph.append(readLine()!.map{ (String($0)) })
}

var waterVisited = Array(repeating: Array(repeating: false, count: c), count: r)
var waterDistance = Array(repeating: Array(repeating: -1, count: c), count: r)
var dochiVisited = Array(repeating: Array(repeating: false, count: c), count: r)
var dochiDistance = Array(repeating: Array(repeating: -1, count: c), count: r)

let directions = [[-1, 0], [1, 0], [0, -1], [0, 1]]

var waters: [[Int]] = []
var dochiLocation: [Int] = []
var finishLocation: [Int] = []

for i in 0..<r {
    for j in 0..<c {
        if graph[i][j] == "*" {
            waterDistance[i][j] = 0
            waterVisited[i][j] = true
            waters.append([i, j])
        }
        if graph[i][j] == "S" {
            dochiDistance[i][j] = 0
            dochiVisited[i][j] = true
            dochiLocation.append(i)
            dochiLocation.append(j)
        }
        if graph[i][j] == "D" {
            finishLocation.append(i)
            finishLocation.append(j)
        }
    }
}


func bfsWater() {
    var needVisited: [[Int]] = []
    for water in waters {
        needVisited.append(water)
    }
    
    while true {
        if needVisited.isEmpty {
            break
        }
        
        let pop = needVisited.removeFirst()
        let popX = pop[0]
        let popY = pop[1]
        
        for direction in directions {
            let nextX = popX + direction[0]
            let nextY = popY + direction[1]
            
            if nextX >= 0 && nextX < r && nextY >= 0 && nextY < c
                && graph[nextX][nextY] == "." && !waterVisited[nextX][nextY] {
                waterVisited[nextX][nextY] = true
                waterDistance[nextX][nextY] = waterDistance[popX][popY] + 1
                needVisited.append([nextX, nextY])
            }
        }
    }
    
}


func bfsDochi() {
    var needVisited = [dochiLocation]
    
    while true {
        if needVisited.isEmpty {
            break
        }
        
        let pop = needVisited.removeFirst()
        let popX = pop[0]
        let popY = pop[1]
        
        if pop == finishLocation {
            break
        }
        
        for direction in directions {
            let nextX = popX + direction[0]
            let nextY = popY + direction[1]
            
            if nextX >= 0 && nextX < r && nextY >= 0 && nextY < c
                && (graph[nextX][nextY] == "." || graph[nextX][nextY] == "D")
                && (waterDistance[nextX][nextY] == -1 || waterDistance[nextX][nextY] > dochiDistance[popX][popY]+1) // 물에 안 잠기는지
                && !dochiVisited[nextX][nextY] {
                dochiVisited[nextX][nextY] = true
                dochiDistance[nextX][nextY] = dochiDistance[popX][popY] + 1
                needVisited.append([nextX, nextY])
            }
        }
    }
}

bfsWater()
bfsDochi()

//print(waterDistance)
//print(dochiDistance)


for i in 0..<r {
    for j in 0..<c {
        if graph[i][j] == "D" {
            if dochiDistance[i][j] != -1 {
                print(dochiDistance[i][j])
                break
            } else {
                print("KAKTUS")
                break
            }
        }
    }
}

