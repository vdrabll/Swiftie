//
//  ContentViewCoordinator.swift
//  LearningApp
//
//  Created by Виктория Федосова on 22.05.2023.
//

import UIKit

final class ContentViewCoordinator: Coordinator {
    var rootViewControoler = UINavigationController()
    
    var childCoordinators = [Coordinator]()
    
    lazy var contentViewController: ContentViewController = {
        var vc = ContentViewController()
        
        return vc
    }()
    
    func start() {
        rootViewControoler.pushViewController(contentViewController, animated: true)
        childCoordinators.append(QuizViewCoordinator())
    }
}
