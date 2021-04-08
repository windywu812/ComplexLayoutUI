//
//  HCollectionView.swift
//  ComplexUI
//
//  Created by Windy on 08/04/21.
//

import UIKit

class HCollectionView: UICollectionView {
    
    private var width: CGFloat
    
    init(frame: CGRect = .zero, collectionViewLayout layout: UICollectionViewLayout? = nil, width: CGFloat) {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 16
        self.width = width
        super.init(frame: frame, collectionViewLayout: layout)
        
        backgroundColor = .systemBackground
        
        register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        
        showsHorizontalScrollIndicator = false
        
        delegate = self
        dataSource = self
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HCollectionView: UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: width, height: bounds.height)
    }
    
}
