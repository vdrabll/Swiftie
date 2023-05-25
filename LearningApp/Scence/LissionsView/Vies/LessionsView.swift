//
//  LessionsView.swift
//  LearningApp
//
//  Created by Виктория Федосова on 25.05.2023.
//

import UIKit

class LessionsView: UITableView {

     init(frame: CGRect) {
        super.init(frame: .zero, style: .insetGrouped)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
