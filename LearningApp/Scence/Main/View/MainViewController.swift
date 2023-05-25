//
//  MainView.swift
//  LearningApp
//
//  Created by Виктория Федосова on 18.05.2023.
//

import Foundation
import UIKit

final class MainViewController: UIView {
    
    var viewModel: MainScreenViewModel
    var pageControll = UISegmentedControl()

    
    init(viewModel: MainScreenViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero)
        backgroundColor = .yellow
        setupSegmentControll()
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSegmentControll() {
        self.pageControll = UISegmentedControl(items: self.viewModel.segmentData)
    }
   
}
extension MainViewController{
    private func setupSubviews() {
        self.pageControll.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(pageControll)
        
        NSLayoutConstraint.activate([
            pageControll.heightAnchor.constraint(equalToConstant: 50),
            pageControll.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),
            pageControll.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            pageControll.rightAnchor.constraint(equalTo: rightAnchor, constant: 10)])
        
    }
}
