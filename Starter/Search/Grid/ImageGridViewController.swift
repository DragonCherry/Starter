//
//  ImageGridViewController.swift
//  Starter
//
//  Created by DragonCherry on 08/02/2018.
//  Copyright © 2018 DragonCherry. All rights reserved.
//

import RxSwift
import RxCocoa
import SnapKit
import TinyLog

class ImageGridViewController: UIViewController {
    
    fileprivate let reuseIdentifier = UUID().uuidString
    fileprivate let bag = DisposeBag()
    fileprivate let viewModel = ImageSearchViewModel()
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        bindViewModel()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    deinit {
        logd("Released \(type(of: self))")
    }
}

// MARK: - Methods
extension ImageGridViewController {
    func bindViewModel() {
        let input = ImageSearchViewModel.Input()
        let output = viewModel.transform(input: input)
    }
    
    func setupCollectionView() {
        collectionView.register(ImageGridCell.nib, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension ImageGridViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .zero
    }
}

// MARK: - UICollectionViewDelegate
extension ImageGridViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

// MARK: - UICollectionViewDataSource
extension ImageGridViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let dequeuedCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        if let cell = dequeuedCell as? ImageGridCell {
            
        }
        return dequeuedCell
    }
}
