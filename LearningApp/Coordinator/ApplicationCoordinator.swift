//
//  ApplicationCoordinator.swift
//  LearningApp
//
//  Created by Виктория Федосова on 17.05.2023.
//

import Foundation
import UIKit

final class ApplicationCoordinator: Coordinator {
    let window: UIWindow
    
    var childCoordinators = [Coordinator].self
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let registrationCoordinator = RegistrationCoordinator()
        registrationCoordinator.start()
        window.rootViewController = registrationCoordinator.rootViewController
    }
}
