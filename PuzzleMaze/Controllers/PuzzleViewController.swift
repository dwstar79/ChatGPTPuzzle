//
//  PuzzleViewController.swift
//  PuzzleMaze
//
//  Created by D on 8/11/23.
//

import UIKit

class PuzzleViewController {
    var currentPuzzle: Puzzle // Model reference to the current puzzle
    var puzzleView: PuzzleView // View reference for displaying the puzzle
    
    init(puzzle: Puzzle) {
        self.currentPuzzle = puzzle
        self.puzzleView = PuzzleView(puzzle: puzzle)
    }
    
    func startPuzzle() {
        // Load puzzle details into the view
        puzzleView.loadPuzzle(currentPuzzle)
    }
    
    func checkSolution(userSolution: Solution) -> Bool {
        if userSolution == currentPuzzle.solution {
            // Update user progress
            // Unlock next chapter/story part
            // Show completion message
            return true
        } else {
            // Show error message
            return false
        }
    }
    
    func useHint() {
        // Check if user has any hint packs available
        if let hint = currentPuzzle.revealHint() {
            // Display hint
            // ...
        }
    }
    
    // Other functions related to puzzle interface
}


//MARK: Crossword Puzzle
class CrosswordPuzzle: Puzzle {
    var type: PuzzleType = .crossword
    var difficulty: PuzzleDifficulty
    var hints: [String]
    var solution: Solution
    var grid: [[Character]] // The crossword grid
    var clues: [String] // Clues for the crossword

    init(difficulty: PuzzleDifficulty, hints: [String], solution: Solution, grid: [[Character]], clues: [String]) {
        self.difficulty = difficulty
        self.hints = hints
        self.solution = solution
        self.grid = grid
        self.clues = clues
    }
    
    func isSolved() -> Bool {
        // Check if the crossword is solved
        // ...
        return false // Return the actual result
    }
    
    func revealHint() -> String? {
        // Reveal a hint if available
        // ...
        return nil // Return the actual hint
    }
}

//MARK: puzzle protocol

//protocol Puzzle {
//    var type: PuzzleType { get }
//    var difficulty: PuzzleDifficulty { get }
//    var hints: [String] { get }
//    var solution: Solution { get }
//
//    func isSolved() -> Bool
//    func revealHint() -> String?
//}

