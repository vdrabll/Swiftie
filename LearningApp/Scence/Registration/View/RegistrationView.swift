//
//  RegistrationView.swift
//  LearningApp
//
//  Created by Виктория Федосова on 20.05.2023.
//

import UIKit

final class RegistrationView: UIView {
    
    private let titleView = RegistrationTitleView()
    var fieldsView = FieldsView()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension RegistrationView {
    func setupSubviews() {
        addSubview(titleView)
        addSubview(fieldsView)
        titleView.translatesAutoresizingMaskIntoConstraints = false
        fieldsView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleView.topAnchor.constraint(equalTo: self.topAnchor),
            titleView.leftAnchor.constraint(equalTo: self.leftAnchor),
            titleView.rightAnchor.constraint(equalTo: self.rightAnchor),
            titleView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -611),
            
            fieldsView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            fieldsView.leftAnchor.constraint(equalTo: self.leftAnchor),
            fieldsView.rightAnchor.constraint(equalTo: self.rightAnchor),
            fieldsView.topAnchor.constraint(equalTo: self.topAnchor, constant: 217)
        ])
        
    }
}
