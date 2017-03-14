//
//  CategoryCell.swift
//  appStoreDemo
//
//  Created by Harol Higuera on 3/14/17.
//  Copyright © 2017 Harol Higuera. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    
    private let cellId = "appId"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // ITEM 1: Category Label
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Best new apps"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // ITEM 2: Collection View
    let appsCollectionView: UICollectionView = {
    
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
    
        return collectionView
    }()
    // ITEM 3: Divisor
    let divisor: UIView = {
   
        let view = UIView()
        view.backgroundColor = UIColor(white: 0.4, alpha: 0.4)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    
    
    func setupViews(){
        backgroundColor = UIColor.clear
        addSubview(appsCollectionView)
        addSubview(divisor)
        addSubview(categoryLabel)
     
        appsCollectionView.dataSource = self
        appsCollectionView.delegate = self
        
        appsCollectionView.register(AppCell.self, forCellWithReuseIdentifier: cellId)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-14-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": categoryLabel]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": appsCollectionView]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-14-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": divisor]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[categoryLabel(30)][v0][v1(0.5)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["categoryLabel": categoryLabel, "v0": appsCollectionView, "v1": divisor]))
        
    }
    

    
    // MARK: UICollectionViewDelegate delegate functions
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
    }
    
    
    // MARK: UICollectionViewDataSource delegate functions
    
    // MARK: UICollectionViewFlowLayout delegate functions
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: frame.height - 32)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
        
        return UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
    }
    
    
    // MARK: Cell for each app!!
    
    class AppCell: UICollectionViewCell{
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupViews()
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
     
        let imageView: UIImageView = {
            let iv = UIImageView(image: UIImage(named: "img_villan"))
            iv.contentMode = .scaleAspectFill
            iv.layer.cornerRadius = 16
            iv.layer.masksToBounds = true
            return iv
        }()
        let nameLabel: UILabel = {
            let label = UILabel()
            label.text = "Mario Bross has come again!!"
            label.font = UIFont.systemFont(ofSize: 12)
            label.numberOfLines = 2
            return label
        }()
        let categoryLabel: UILabel = {
            let label = UILabel()
            label.text = "Entertaiment"
            label.font = UIFont.systemFont(ofSize: 11)
            label.textColor = UIColor.darkGray
            return label
        }()
        let priceLabel: UILabel = {
            let label = UILabel()
            label.text = "$3.99"
            label.font = UIFont.systemFont(ofSize: 11)
            label.textColor = UIColor.darkGray
            return label
        }()
        
        
        func setupViews() {

            addSubview(imageView)
            imageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.width)
            
            addSubview(nameLabel)
            nameLabel.frame = CGRect(x: 0, y: frame.width + 2, width: frame.width, height: 40)
            
            addSubview(categoryLabel)
            categoryLabel.frame = CGRect(x: 0, y: frame.width + 38, width: frame.width, height: 20)
            
            addSubview(priceLabel)
            priceLabel.frame = CGRect(x: 0, y: frame.width + 56, width: frame.width, height: 20)
        }
    }
    
}
