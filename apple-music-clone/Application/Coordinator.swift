//
//  Coordinator.swift
//  apple-music-clone
//
//  Created by Rogério Tavares on 10/06/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
