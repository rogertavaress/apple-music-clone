//
//  AppCoordinator.swift
//  apple-music-clone
//
//  Created by Rogério Tavares on 10/06/22.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homeScene = createHomeScene()
        navigationController.pushViewController(homeScene, animated: false)
        navigationController.navigationBar.isHidden = true
    }
    
    private func createTabBarItem(for rootViewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        return navController
    }
    
    private func createHomeScene() -> UIViewController {
        let homeViewController = HomeViewController()
        homeViewController.viewControllers = [
            createTabBarItem(for: ListenNowViewController(), title: "Ouvir agora", image: UIImage(systemName: "play.circle.fill")),
            createTabBarItem(for: ExplorerViewController(), title: "Explorar", image: UIImage(systemName: "square.split.2x2.fill"))
        ]
        return homeViewController
    }
}
