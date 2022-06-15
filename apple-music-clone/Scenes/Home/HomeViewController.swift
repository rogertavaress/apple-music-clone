//
//  HomeViewController.swift
//  apple-music-clone
//
//  Created by Rogério Tavares on 15/06/22.
//

import UIKit

class HomeViewController: UITabBarController {

    var coordinator: AppCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = .systemRed
    }

}
