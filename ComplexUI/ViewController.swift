//
//  ViewController.swift
//  ComplexUI
//
//  Created by Windy on 26/03/21.
//

import UIKit

class ViewController: UIViewController {

    private var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Complex UI"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        view.backgroundColor = .systemBackground
        
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        let largeSection = HCollectionView(width: UIScreen.main.bounds.width - 48)
        largeSection.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(largeSection)
        
        let mediumSection = HCollectionView(width: UIScreen.main.bounds.width / 1.5)
        mediumSection.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(mediumSection)
        
        let verticalSection = VCollectionView()
        verticalSection.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(verticalSection)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            largeSection.topAnchor.constraint(equalTo: scrollView.topAnchor),
            largeSection.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            largeSection.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            largeSection.heightAnchor.constraint(equalToConstant: 200),
            
            mediumSection.topAnchor.constraint(equalTo: largeSection.bottomAnchor, constant: 16),
            mediumSection.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            mediumSection.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mediumSection.heightAnchor.constraint(equalToConstant: 150),
            
            verticalSection.topAnchor.constraint(equalTo: mediumSection.bottomAnchor, constant: 16),
            verticalSection.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            verticalSection.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            verticalSection.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
        
    }
  
}
