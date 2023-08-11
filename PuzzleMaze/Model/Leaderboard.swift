//
//  Leaderboard.swift
//  PuzzleMaze
//
//  Created by D on 8/11/23.
//

import Foundation

class Leaderboard {
    var rankings: [Ranking]
    var type: LeaderboardType

    init(rankings: [Ranking], type: LeaderboardType) {
        self.rankings = rankings
        self.type = type
    }

    func addUserRanking(ranking: Ranking) {
        rankings.append(ranking)
        sortRankings()
    }

    private func sortRankings() {
        // Sort rankings based on score, highest to lowest
        rankings.sort { $0.score > $1.score }
    }

    func getRanking(for user: User) -> Int? {
        return rankings.firstIndex { $0.user as! AnyHashable == user as! AnyHashable }
    }

    // Additional methods to manage leaderboard as needed
}

enum LeaderboardType {
    case global
    case friends
}

class Ranking {
    var user: User
    var score: Int

    init(user: User, score: Int) {
        self.user = user
        self.score = score
    }
}
