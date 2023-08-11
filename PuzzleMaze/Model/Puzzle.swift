//
//  Puzzle.swift
//  PuzzleMaze
//
//  Created by D on 8/11/23.
//


import Foundation

enum PuzzleType {
    case crossword
    case jigsaw
    case logic
    // Add other puzzle types as needed
}

enum DifficultyLevel {
    case easy
    case medium
    case hard
}

class Puzzle {
    
    // Puzzle attributes
    var puzzleID: String // Unique identifier for the puzzle
    var type: PuzzleType
    var difficulty: DifficultyLevel
    var description: String // Textual description of the puzzle
    var image: String? // URL or local path to the puzzle's image (if applicable)
    
    // Solution
    var solution: String // May represent the solution in a format suitable for the puzzle type
    
    // Hints
    var hints: [String] // An array of hints to help the user solve the puzzle
    
    // Whether the puzzle is solved or not
    var isSolved: Bool
    
    // Initialization
    init(puzzleID: String, type: PuzzleType, difficulty: DifficultyLevel, description: String, solution: String, hints: [String], image: String? = nil) {
        self.puzzleID = puzzleID
        self.type = type
        self.difficulty = difficulty
        self.description = description
        self.solution = solution
        self.hints = hints
        self.image = image
        self.isSolved = false
    }
    
    // Method to validate a user's solution
    func validateSolution(_ userSolution: String) -> Bool {
        if userSolution == solution {
            isSolved = true
            return true
        } else {
            return false
        }
    }
    
    // Method to retrieve a hint
    func getHint() -> String? {
        return hints.isEmpty ? nil : hints.removeFirst()
    }
}
