//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 7/13/24.
//

// 랭킹전 대기열
// 20006

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let p = input[0] // 플레이어 수
let m = input[1] // 방의 정원

typealias Player = (name: String, level: Int)
typealias Room = (players: [Player], minLevel: Int, maxLevel: Int)

var rooms: [Room] = []

for _ in 0..<p {
    let input = readLine()!.split(separator: " ")
    let level = Int(input[0])!
    let player = String(input[1])
    
    var roomFound = false
    
    for i in 0..<rooms.count {
        if level >= rooms[i].minLevel && level <= rooms[i].maxLevel && rooms[i].players.count < m {
            rooms[i].players.append((name: player, level: level))
            roomFound = true
            break
        }
    }
    
    if !roomFound {
        let newRoom: Room = (players: [(name: player, level: level)], minLevel: level - 10, maxLevel: level + 10)
        rooms.append(newRoom)
    }
}

var answer = ""
for room in rooms {
    if room.players.count >= m {
        answer += "Started!\n"
    } else {
        answer += "Waiting!\n"
    }
    
    let sortedPlayers = room.players.sorted { $0.name < $1.name }
    for player in sortedPlayers {
        answer += "\(player.level) \(player.name)\n"
    }
}

print(answer)


//let input = readLine()!.split(separator: " ").map { Int(String($0))! }
//let p = input[0] // 플레이어 수
//let m = input[1] // 방의 정원
//
//typealias Game = [(player: String, level: Int)]
//var games: [Game] = []
//var gameInfos: [(to: Int, from: Int, personnel: Int)] = []
//
//var answer = ""
//
//for _ in 0..<p {
//    let input = readLine()!.split(separator: " ")
//    let level = Int(input[0])!
//    let player = String(input[1])
//    
//    if games.isEmpty {
//        var game = Game()
//        game.append((player, level))
//        games.append(game)
//        gameInfos.append((level - 0, level + 10, 1))
//    } else {
//        var isParticipate = false
//        
//        for i in 0..<gameInfos.count {
//            var gameInfo = gameInfos[i]
//            
//            if level >= gameInfo.to && level <= gameInfo.from && gameInfo.personnel < m {
//                games[i].append((player, level))
//                gameInfo.personnel += 1
//                gameInfos[i] = gameInfo
//                isParticipate = true
//                break
//            }
//        }
//        
//        if !isParticipate {
//            var game = Game()
//            game.append((player, level))
//            games.append(game)
//            gameInfos.append((level - 10, level + 10, 1))
//        }
//    }
//}
//
//for i in 0..<gameInfos.count {
//    if gameInfos[i].personnel == m {
//        answer += "Started!\n"
//    } else {
//        answer += "Waiting!\n"
//    }
//    
//    let sorted = games[i].sorted {
//        return $0.player < $1.player
//    }
//    for sort in sorted {
//        answer += "\(sort.level) \(sort.player)\n"
//    }
//}
//
//print(answer)
