//
//  PuzzleView.swift
//  PuzzleMaze
//
//  Created by D on 8/11/23.
//

import UIKit

class PuzzleView: UIView {
    
    // A label to display the puzzle title or type
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textAlignment = .center
        return label
    }()
    
    // A view to contain the actual puzzle, e.g., crossword grid, jigsaw pieces
    let puzzleContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        // Additional customization for the puzzle display can be done here
        return view
    }()
    
    // A button to provide hints
    let hintButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Hint", for: .normal)
        button.backgroundColor = UIColor.systemBlue
        button.layer.cornerRadius = 8
        return button
    }()
    
    // An optional timer label to show time elapsed or remaining
    let timerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.monospacedDigitSystemFont(ofSize: 16, weight: .regular)
        label.textAlignment = .right
        return label
    }()
    
    // Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Method to set up the layout constraints
    private func setupViews() {
        addSubview(titleLabel)
        addSubview(puzzleContainerView)
        addSubview(hintButton)
        addSubview(timerLabel)
        
        // Constraints for titleLabel
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
        
        // Constraints for puzzleContainerView
        NSLayoutConstraint.activate([
            puzzleContainerView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            puzzleContainerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            puzzleContainerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            puzzleContainerView.bottomAnchor.constraint(equalTo: hintButton.topAnchor, constant: -16)
        ])
        
        // Constraints for hintButton
        NSLayoutConstraint.activate([
            hintButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            hintButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            hintButton.widthAnchor.constraint(equalToConstant: 80),
            hintButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        // Constraints for timerLabel
        NSLayoutConstraint.activate([
            timerLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            timerLabel.bottomAnchor.constraint(equalTo: hintButton.bottomAnchor),
            timerLabel.widthAnchor.constraint(equalToConstant: 100),
            timerLabel.heightAnchor.constraint(equalTo: hintButton.heightAnchor)
        ])
    }
    
    // Other methods related to puzzle display, interactions, updates, etc.
}

