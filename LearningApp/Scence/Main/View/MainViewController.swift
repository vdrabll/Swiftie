//
//  MainView.swift
//  LearningApp
//
//  Created by Виктория Федосова on 18.05.2023.
//

import Foundation
import UIKit

final class MainViewController: UIView {
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .green
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
