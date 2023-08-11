//
//  StoreView.swift
//  PuzzleMaze
//
//  Created by D on 8/11/23.
//

import UIKit

class StoreView: UIView {
    
    // Segment control to select between Hint Packs, Story Boosts, and Custom Themes
    let segmentedControl: UISegmentedControl = {
        let items = ["Hint Packs", "Story Boosts", "Custom Themes"]
        let control = UISegmentedControl(items: items)
        control.translatesAutoresizingMaskIntoConstraints = false
        control.selectedSegmentIndex = 0
        return control
    }()
    
    // Collection view to display available items for purchase
    let itemsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(StoreItemCell.self, forCellWithReuseIdentifier: "StoreItemCell")
        collectionView.backgroundColor = .white
        return collectionView
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
        addSubview(segmentedControl)
        addSubview(itemsCollectionView)
        
        // Constraints for segmentedControl
        NSLayoutConstraint.activate([
            segmentedControl.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            segmentedControl.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            segmentedControl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
        
        // Constraints for itemsCollectionView
        NSLayoutConstraint.activate([
            itemsCollectionView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 16),
            itemsCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            itemsCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            itemsCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}

// Custom collection view cell to represent purchasable items
class StoreItemCell: UICollectionViewCell {
    
    // ImageView for item icon
    let itemImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    // Label to display the item name
    let itemNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    // Label to display the item price
    let itemPriceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
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
        addSubview(itemImageView)
        addSubview(itemNameLabel)
        addSubview(itemPriceLabel)
        
        // Constraints for itemImageView
        NSLayoutConstraint.activate([
            itemImageView.topAnchor.constraint(equalTo: topAnchor),
            itemImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            itemImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            itemImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        // Constraints for itemNameLabel
        NSLayoutConstraint.activate([
            itemNameLabel.topAnchor.constraint(equalTo: itemImageView.bottomAnchor, constant: 8),
            itemNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            itemNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
        ])
        
        // Constraints for itemPriceLabel
        NSLayoutConstraint.activate([
            itemPriceLabel.topAnchor.constraint(equalTo: itemNameLabel.bottomAnchor, constant: 8),
            itemPriceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            itemPriceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
        ])
    }
}
