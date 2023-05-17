//
//  ApplicationCoordinator.swift
//  LearningApp
//
//  Created by Виктория Федосова on 17.05.2023.
//

import Foundation
import UIKit

class ApplicationCoordinator: Coordinator {
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        window.rootViewController = ViewController() 
    }
}
