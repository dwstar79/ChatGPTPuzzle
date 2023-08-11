//
//  LeaderboardView.swift
//  PuzzleMaze
//
//  Created by D on 8/11/23.
//

import UIKit

class LeaderboardView: UIView {
    
    // Table view to display leaderboard rankings
    let leaderboardTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(LeaderboardTableViewCell.self, forCellReuseIdentifier: "LeaderboardCell")
        return tableView
    }()
    
    // Label to display a title or other heading
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.text = "Leaderboard"
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
        addSubview(leaderboardTableView)
        
        // Constraints for titleLabel
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
        
        // Constraints for leaderboardTableView
        NSLayoutConstraint.activate([
            leaderboardTableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            leaderboardTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            leaderboardTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            leaderboardTableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
}

// Custom table view cell to represent a player's rank, username, score, etc.
class LeaderboardTableViewCell: UITableViewCell {
    
    // Label to display the rank
    let rankLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    // Label to display the username
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    // Label to display the score
    let scoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    // Initialization
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Method to set up the layout constraints
    private func setupViews() {
        addSubview(rankLabel)
        addSubview(usernameLabel)
        addSubview(scoreLabel)
        
        // Constraints for rankLabel
        NSLayoutConstraint.activate([
            rankLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            rankLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        // Constraints for usernameLabel
        NSLayoutConstraint.activate([
            usernameLabel.leadingAnchor.constraint(equalTo: rankLabel.trailingAnchor, constant: 16),
            usernameLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        // Constraints for scoreLabel
        NSLayoutConstraint.activate([
            scoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            scoreLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}

