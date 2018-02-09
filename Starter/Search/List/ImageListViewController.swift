//
//  ImageListViewController.swift
//  Starter
//
//  Created by DragonCherry on 08/02/2018.
//  Copyright © 2018 DragonCherry. All rights reserved.
//

import RxSwift
import RxCocoa
import SnapKit
import TinyLog

class ImageListViewController: UIViewController {
    
    fileprivate let reuseIdentifier = UUID().uuidString
    fileprivate let bag = DisposeBag()
    let viewModel = ImageSearchViewModel()
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
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
extension ImageListViewController {
    func bindViewModel() {
        let input = ImageSearchViewModel.Input()
        let output = viewModel.transform(input: input)
    }
    
    fileprivate func setupTableView() {
        tableView.tableFooterView = UIView()
        tableView.register(ImageListCell.nib, forCellReuseIdentifier: self.reuseIdentifier)
        tableView.estimatedRowHeight = view.bounds.width
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// MARK: - UITableViewDelegate
extension ImageListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - UITableViewDataSource
extension ImageListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        if let cell = dequeuedCell as? ImageListCell {
            
        }
        return dequeuedCell
    }
}
