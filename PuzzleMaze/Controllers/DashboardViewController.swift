//
//  DashboardViewController.swift
//  PuzzleMaze
//
//  Created by D on 8/11/23.
//

import UIKit

class DashboardViewController {
    
    var currentUser: User // Reference to the current user
    var dashboardView: DashboardView // Reference to the view for displaying the dashboard
    
    init(user: User) {
        self.currentUser = user
        self.dashboardView = DashboardView(user: user)
    }
    
    // Function to load the user's stats
    func loadUserStats() {
        let stats = currentUser.getStats()
        dashboardView.displayStats(stats)
    }
    
    // Function to load user's achievements
    func loadAchievements() {
        let achievements = currentUser.getAchievements()
        dashboardView.displayAchievements(achievements)
    }
    
    // Function to load user's story progress
    func loadStoryProgress() {
        let progress = currentUser.getStoryProgress()
        dashboardView.displayStoryProgress(progress)
    }
    
    // Function to load user's ranking in leaderboards
    func loadLeaderboards() {
        let leaderboards = Leaderboard.getRanking(forUser: currentUser)
        dashboardView.displayLeaderboards(leaderboards)
    }
    
    // Function to navigate to other parts of the app, like Store, Puzzles, etc.
    func navigateTo(_ destination: Destination) {
        // Handle navigation logic
    }
    
    // Other functions related to the dashboard interface, user interactions, settings, etc.
}

