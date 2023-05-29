//
//  RegistrationCoordinator.swift
//  LearningApp
//
//  Created by Виктория Федосова on 20.05.2023.
//

import Foundation
import UIKit

final class RegistrationCoordinator: Coordinator {
    let rootViewController = UIViewController()
    
    var childCoordinator = [Coordinator]()
    
    func start() {
        let view = RegistrationView()
        rootViewController.view = view
        childCoordinator.append(MainViewCoordinator())
    }
}
