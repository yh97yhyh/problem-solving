//
//  main.swift
//  ProblemSolving
//
//  Created by 영현 on 9/15/24.
//

// 랭킹전 대기열
// 20006
// 처음 입장한 플레이어 레벨 기준으로 -10 ~ +10까지 입장
// 입장 가능한 방이 있다면, 입장시킨 후 방의 방의 정원이 모두 찰 때까지 대기, 입장 가능한 방이 여러개라면 먼저 생성된 방에 입장
// 방의 정원이 차면 게임 시작

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let p = input[0] // 플레이어 수
let m = input[1] // 방의 정원

var games: [(left: Int, right: Int)] = []
var users: [[(l: Int, n: String)]] = []

for _ in 0..<p {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let l = Int(input[0])! // 레벨
    let n = input[1] // 닉네임
    
    if games.isEmpty {
        games.append((l-10, l+10))
        users.append([(l, n)])
    } else {
        var isParticipated = false
        for i in 0..<games.count {
            let game = games[i]
            
            
            if l >= game.left && l <= game.right && users[i].count < m {
                isParticipated = true
                users[i].append((l, n))
                break
            }
        }
        
        if !isParticipated {
            games.append((l-10, l+10))
            users.append([(l, n)])
        }
    }
}

for i in 0..<games.count {
    let players = users[i].sorted( by: { $0.n < $1.n })
    players.count == m ? print("Started!") : print("Waiting!")
    
    for player in players {
        print("\(player.l) \(player.n)")
    }
}
