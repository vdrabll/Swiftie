//
//  RegistrationTitleView.swift
//  LearningApp
//
//  Created by Виктория Федосова on 23.05.2023.
//

import UIKit

final class RegistrationTitleView: UIView {
   
    var nameLable: UILabel = {
        var lable = UILabel()
        lable.text = Constants.lableName
        lable.adjustsFontSizeToFitWidth = true
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.font = UIFont(name: Constants.fontName, size: Constants.fontSize)

        return lable
    }()
    
    private enum Constants {
        static let fontName = "Arial"
        static let fontSize: CGFloat = 50
        static let lableName = "Swiftie"
    }
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .orange
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

private extension RegistrationTitleView {
    func setupSubviews() {
        self.addSubview(nameLable)
        NSLayoutConstraint.activate([
            nameLable.widthAnchor.constraint(equalToConstant: 109),
            nameLable.heightAnchor.constraint(equalToConstant: 59),
            nameLable.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 145),
            nameLable.topAnchor.constraint(equalTo: self.topAnchor, constant: 100)
        ])
    }
}
