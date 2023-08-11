//
//  Story.swift
//  PuzzleMaze
//
//  Created by D on 8/11/23.
//

import Foundation

class Chapter {
    var chapterID: String // Unique identifier for the chapter
    var title: String
    var content: String // Main content of the chapter, can be in HTML or plain text
    var associatedPuzzle: Puzzle? // Associated puzzle for the chapter
    var choices: [Choice]? // Choices leading to different paths in the story
    var image: String? // URL or local path to the chapter's image (if applicable)
    var audio: String? // URL or local path to the chapter's background audio (if applicable)

    init(chapterID: String, title: String, content: String, associatedPuzzle: Puzzle?, choices: [Choice]? = nil, image: String? = nil, audio: String? = nil) {
        self.chapterID = chapterID
        self.title = title
        self.content = content
        self.associatedPuzzle = associatedPuzzle
        self.choices = choices
        self.image = image
        self.audio = audio
    }
}

class Choice {
    var text: String // Text description of the choice
    var nextChapterID: String // Reference to the next chapter based on the choice

    init(text: String, nextChapterID: String) {
        self.text = text
        self.nextChapterID = nextChapterID
    }
}

class Story {
    var chapters: [Chapter] // Ordered list of chapters in the story

    init(chapters: [Chapter]) {
        self.chapters = chapters
    }

    func getChapter(byID chapterID: String) -> Chapter? {
        return chapters.first { $0.chapterID == chapterID }
    }

    // Additional methods as needed for managing the story progression
}
