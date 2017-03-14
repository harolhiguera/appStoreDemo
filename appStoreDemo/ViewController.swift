//
//  ViewController.swift
//  appStoreDemo
//
//  Created by Harol Higuera on 3/14/17.
//  Copyright © 2017 Harol Higuera. All rights reserved.
//

import UIKit

class FeatureAppsController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private let cellId = "cellId"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(CategoriesCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CategoriesCell
        
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
    
    
    
    class CategoriesCell: UICollectionViewCell{
    
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupViews()
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setupViews(){
            backgroundColor = UIColor.black
        }
        
    }
    
    
}

