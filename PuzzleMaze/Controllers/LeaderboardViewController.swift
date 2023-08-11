//
//  LeaderboardViewController.swift
//  PuzzleMaze
//
//  Created by D on 8/11/23.
//

import UIKit

class LeaderboardViewController {
    
    var currentUser: User // Reference to the current user
    var leaderboardView: LeaderboardView // Reference to the view for displaying the leaderboards
    
    init(user: User) {
        self.currentUser = user
        self.leaderboardView = LeaderboardView()
    }
    
    // Function to load global leaderboards
    func loadGlobalLeaderboards() {
        let globalRankings = Leaderboard.getGlobalRankings()
        leaderboardView.displayGlobalLeaderboards(globalRankings)
    }
    
    // Function to load friends-based leaderboards
    func loadFriendsLeaderboards() {
        let friendsRankings = Leaderboard.getFriendsRankings(forUser: currentUser)
        leaderboardView.displayFriendsLeaderboards(friendsRankings)
    }
    
    // Function to handle user interactions like filtering, searching, etc.
    func handleUserAction(action: UserAction) {
        // Handle specific user actions like sorting, filtering, etc.
    }
    
    // Function to navigate to other parts of the app, like user profiles, challenges, etc.
    func navigateTo(_ destination: Destination) {
        // Handle navigation logic
    }
    
    // Other functions related to leaderboard interface, interactions, updates, etc.
}

