//
//  AccountView.swift
//  LearningApp
//
//  Created by Виктория Федосова on 18.05.2023.
//

import UIKit

final class TestView: UIView {
        
        init() {
            super.init(frame: .zero)
            backgroundColor = .red
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    }
    extension TestView {
        func setupSubviews() {
            
        }
    }

