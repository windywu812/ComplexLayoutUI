//
//  VCollectionView.swift
//  ComplexUI
//
//  Created by Windy on 08/04/21.
//

import UIKit

class VCollectionView: UICollectionView {
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 16
        layout.minimumLineSpacing = 16
        
        super.init(frame: frame, collectionViewLayout: layout)
        
        backgroundColor = .white
        
        register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        
        showsVerticalScrollIndicator = false
        isScrollEnabled = false
        
        delegate = self
        dataSource = self
        
        translatesAutoresizingMaskIntoConstraints = false
        
        let height = (10 * 150) + (10 * 16)
        heightAnchor.constraint(equalToConstant: CGFloat(height)).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension VCollectionView: UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: bounds.width, height: 150)
    }
    
}

