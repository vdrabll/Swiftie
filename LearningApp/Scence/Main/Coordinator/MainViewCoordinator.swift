//
//  MainViewCoordinator.swift
//  LearningApp
//
//  Created by Виктория Федосова on 18.05.2023.
//

import Foundation
import UIKit

class MainViewCoordinator: Coordinator {
    var rootView = UIViewController()
    
    var childCoordinators = [Coordinator]()
    
    lazy var mainViewControoler:MainViewController = {
        var vc = MainViewController()
        return vc
    }()
    
    func start() {
        
        rootView.view = mainViewControoler
        childCoordinators.append(MainViewCoordinator())
        
    }
}
