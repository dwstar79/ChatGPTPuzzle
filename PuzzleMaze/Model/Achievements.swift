//
//  Achievements.swift
//  PuzzleMaze
//
//  Created by D on 8/11/23.
//

import Foundation

class Achievements {
    var badges: [Badge]
    var awards: [Award]

    init(badges: [Badge] = [], awards: [Award] = []) {
        self.badges = badges
        self.awards = awards
    }

    func addBadge(badge: Badge) {
        badges.append(badge)
    }

    func addAward(award: Award) {
        awards.append(award)
    }

    func getAchievements(for user: User) -> [Achievement] {
        return badges + awards.filter { $0.user == user }
    }
}

protocol Achievement {
    var name: String { get }
    var description: String { get }
    var unlocked: Bool { get set }
    // Additional properties and methods as needed
}

class Badge: Achievement {
    var name: String
    var description: String
    var unlocked: Bool

    init(name: String, description: String, unlocked: Bool = false) {
        self.name = name
        self.description = description
        self.unlocked = unlocked
    }
}

class Award: Achievement {
    var name: String
    var description: String
    var unlocked: Bool
    var user: User

    init(name: String, description: String, user: User, unlocked: Bool = false) {
        self.name = name
        self.description = description
        self.user = user
        self.unlocked = unlocked
    }
}
