//
//  ListenNowViewController.swift
//  apple-music-clone
//
//  Created by Rogério Tavares on 10/06/22.
//

import UIKit

class ListenNowViewController: UIViewController {
    weak var coordinator: AppCoordinator?
    
    lazy var tableView: CustomTableView = {
        let view = CustomTableView()
        return view
    }()
    
    override func loadView() {
        super.loadView()
        configure()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    private func configure() {
        title = "Ouvir agora"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBackground
    }
}
