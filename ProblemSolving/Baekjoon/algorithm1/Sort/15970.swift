//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 2024/01/11.
//

// 화살표 그리기
// 15970

import Foundation

struct Coord {
    var coordinate: Int
    var color: Int
}
var coords: [Coord] = []

let n = Int(readLine()!)!
for _ in 0..<n {
    let inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
    coords.append(Coord(coordinate: inputs[0], color: inputs[1]))
}

let sortedCoords = coords.sorted {
    if $0.color == $1.color {
        return $0.coordinate < $1.coordinate
    } else {
        return $0.color < $1.color
    }
}

var colorGroups: [Int: [Coord]] = [:]
for coord in sortedCoords {
    if colorGroups[coord.color] == nil {
        colorGroups[coord.color] = [coord]
    } else {
        colorGroups[coord.color]?.append(coord)
    }
}
let coordsArray = Array(colorGroups.values)

//print(coordsArray)

var result = 0

for i in 0..<coordsArray.count {
    for j in 0..<coordsArray[i].count {
        let currentCoord = coordsArray[i][j].coordinate
        if j == 0 {
            let nextCoords = coordsArray[i][j+1].coordinate
            result += nextCoords - currentCoord
//            print(nextCoords - currentCoord)
        } else if j == coordsArray[i].count - 1 {
            let previousCoords = coordsArray[i][j-1].coordinate
            result += currentCoord - previousCoords
//            print(currentCoord - previousCoords)
        } else {
            let nextCoords = coordsArray[i][j+1].coordinate
            let previousCoords = coordsArray[i][j-1].coordinate
            result += min(nextCoords - currentCoord, currentCoord - previousCoords)
//            print(min(nextCoords - currentCoord, currentCoord - previousCoords))
        }
    }
}

print(result)
