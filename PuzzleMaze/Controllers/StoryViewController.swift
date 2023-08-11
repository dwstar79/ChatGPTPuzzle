//
//  StoryViewController.swift
//  PuzzleMaze
//
//  Created by D on 8/11/23.
//

import UIKit

class StoryViewController {
    
    var currentUser: User // Reference to the current user
    var currentStory: Story // Reference to the current story
    var storyView: StoryView // Reference to the view for displaying the story
    
    init(user: User, story: Story) {
        self.currentUser = user
        self.currentStory = story
        self.storyView = StoryView(story: story)
    }
    
    // Function to load the current chapter of the story
    func loadCurrentChapter() {
        let currentChapter = currentStory.getChapter(forUser: currentUser)
        storyView.displayChapter(currentChapter)
    }
    
    // Function to handle user's choice or decision
    func handleDecision(decision: Decision) {
        // Update the story based on the decision
        let nextChapter = currentStory.getNextChapter(forDecision: decision)
        
        // Update user's progress
        currentUser.updateProgress(withChapter: nextChapter)
        
        // Display the next part of the story
        storyView.displayChapter(nextChapter)
    }
    
    // Function to unlock the next part of the story, e.g., after solving a puzzle
    func unlockNextChapter() {
        let nextChapter = currentStory.unlockNextChapter(forUser: currentUser)
        
        // Update user's progress
        currentUser.updateProgress(withChapter: nextChapter)
        
        // Show success message or animation
    }
    
    // Function to interact with the StoreViewController, e.g., for story boosts
    func purchaseStoryBoost() {
        // Handle purchase logic, unlock chapters, etc.
    }
    
    // Other functions related to story interface and interactions
}
