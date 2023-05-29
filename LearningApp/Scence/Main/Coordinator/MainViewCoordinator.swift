//
//  MainViewCoordinator.swift
//  LearningApp
//
//  Created by Виктория Федосова on 18.05.2023.
//

import Foundation
import UIKit

class MainViewCoordinator: Coordinator {
    var rootViewController = UIViewController()
    var viewModel = MainScreenViewModel()
    
    var childCoordinators = [Coordinator]()
    
    lazy var mainViewControler:MainViewController = {
        var vc = MainViewController(viewModel: self.viewModel)
        return vc
    }()
    
    func start() {
        rootViewController.view = mainViewControler
        childCoordinators.append(ContentViewCoordinator())
        childCoordinators.append(AccountViewCoordinator())
        
    }
}
