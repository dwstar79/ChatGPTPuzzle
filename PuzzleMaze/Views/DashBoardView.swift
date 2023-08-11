//
//  DashBoardView.swift
//  PuzzleMaze
//
//  Created by D on 8/11/23.

import UIKit

class DashboardView: UIView {
    
    // Label to display user's level
    let levelLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    // Progress bar to display story progress
    let storyProgressView: UIProgressView = {
        let progressView = UIProgressView(progressViewStyle: .default)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    // Label to display user's points or score
    let pointsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    // Stack view to display badges or achievements
    let achievementsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 10
        return stackView
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
        addSubview(levelLabel)
        addSubview(storyProgressView)
        addSubview(pointsLabel)
        addSubview(achievementsStackView)
        
        // Constraints for levelLabel
        NSLayoutConstraint.activate([
            levelLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            levelLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            levelLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
        
        // Constraints for storyProgressView
        NSLayoutConstraint.activate([
            storyProgressView.topAnchor.constraint(equalTo: levelLabel.bottomAnchor, constant: 16),
            storyProgressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            storyProgressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
        
        // Constraints for pointsLabel
        NSLayoutConstraint.activate([
            pointsLabel.topAnchor.constraint(equalTo: storyProgressView.bottomAnchor, constant: 16),
            pointsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            pointsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
        
        // Constraints for achievementsStackView
        NSLayoutConstraint.activate([
            achievementsStackView.topAnchor.constraint(equalTo: pointsLabel.bottomAnchor, constant: 16),
            achievementsStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            achievementsStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            achievementsStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
        ])
    }
    
    // Method to add an achievement badge
    func addAchievementBadge(image: UIImage) {
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        achievementsStackView.addArrangedSubview(imageView)
    }
    
    // Other methods related to updating progress, achievements, etc.
}

