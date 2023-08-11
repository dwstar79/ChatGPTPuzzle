//
//  User.swift
//  PuzzleMaze
//
//  Created by D on 8/11/23.
//

import UIKit

class User {
    
    // User information
    var username: String
    var email: String
    var password: String // For demonstration purposes; typically, you wouldn't store this in the model
    
    // Progress and stats
    var currentLevel: Int
    var totalScore: Int
    var dailyStreak: Int
    
    // Achievements
    var achievements: [Achievement] // An array of Achievement objects representing the user's unlocked achievements
    
    // In-app purchases
    var purchasedHintPacks: Int
    var purchasedStoryBoosts: Int
    var purchasedCustomThemes: [String] // Custom theme identifiers
    
    // Initialization
    init(username: String, email: String, password: String) {
        self.username = username
        self.email = email
        self.password = password
        self.currentLevel = 0
        self.totalScore = 0
        self.dailyStreak = 0
        self.achievements = []
        self.purchasedHintPacks = 0
        self.purchasedStoryBoosts = 0
        self.purchasedCustomThemes = []
    }
    
    // Method to update the user's score
    func updateScore(withPoints points: Int) {
        totalScore += points
    }
    
    // Method to update the user's daily streak
    func updateDailyStreak() {
        dailyStreak += 1
    }
    
    // Method to reset the user's daily streak
    func resetDailyStreak() {
        dailyStreak = 0
    }
    
    // Method to add an achievement
    func addAchievement(_ achievement: Achievement) {
        achievements.append(achievement)
    }
    
    // Method to purchase a hint pack
    func purchaseHintPack() {
        purchasedHintPacks += 1
    }
    
    // Method to purchase a story boost
    func purchaseStoryBoost() {
        purchasedStoryBoosts += 1
    }
    
    // Method to purchase a custom theme
    func purchaseCustomTheme(withID themeID: String) {
        purchasedCustomThemes.append(themeID)
    }
}

