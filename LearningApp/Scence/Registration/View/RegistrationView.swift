//
//  RegistrationView.swift
//  LearningApp
//
//  Created by Виктория Федосова on 20.05.2023.
//

import Foundation
import UIKit

final class RegistrationView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        self.backgroundColor = .brown
        self.accessibilityLabel = "это окно регистрации"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
