//
//  StoryView.swift
//  PuzzleMaze
//
//  Created by D on 8/11/23.
//

import UIKit

class StoryView: UIView {
    
    // A label to display the title of the chapter or section
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textAlignment = .center
        return label
    }()
    
    // An image view to display related illustrations or images
    let storyImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    // A text view to display the story content
    let storyTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        textView.font = UIFont.systemFont(ofSize: 16)
        return textView
    }()
    
    // A stack view to contain choice buttons
    let choicesStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
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
        addSubview(titleLabel)
        addSubview(storyImageView)
        addSubview(storyTextView)
        addSubview(choicesStackView)
        
        // Constraints for titleLabel
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
        
        // Constraints for storyImageView
        NSLayoutConstraint.activate([
            storyImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            storyImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            storyImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            storyImageView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        // Constraints for storyTextView
        NSLayoutConstraint.activate([
            storyTextView.topAnchor.constraint(equalTo: storyImageView.bottomAnchor, constant: 16),
            storyTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            storyTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
        
        // Constraints for choicesStackView
        NSLayoutConstraint.activate([
            choicesStackView.topAnchor.constraint(equalTo: storyTextView.bottomAnchor, constant: 16),
            choicesStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            choicesStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            choicesStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
        ])
    }
    
    // Method to add choices (buttons) to the stack view
    func addChoiceButton(title: String, action: Selector, target: Any) {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(title, for: .normal)
        button.backgroundColor = UIColor.systemBlue
        button.layer.cornerRadius = 8
        button.addTarget(target, action: action, for: .touchUpInside)
        choicesStackView.addArrangedSubview(button)
    }
    
    // Other methods related to story display, interactions, updates, etc.
}

