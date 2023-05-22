//
//  QuizViewCoordinator.swift
//  LearningApp
//
//  Created by Виктория Федосова on 22.05.2023.
//

import UIKit

final class QuizViewCoordinator: Coordinator {
    
    var rootView = UINavigationController()
    
    var childCoordinators = [Coordinator]()
    
    lazy var quizViewController: QuizViewController = {
        var vc = QuizViewController()
        
        return vc
    }()
    
    
    func start() {
        rootView.pushViewController(quizViewController, animated: true)
    }
}
