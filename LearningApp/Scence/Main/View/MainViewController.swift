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
    var lessionsView = LessionsView()
    var accountView = AccountView()

    
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
        self.pageControll.addTarget(self, action: #selector(selectedValue), for: .valueChanged)
   
        
    }
    
    @objc func selectedValue(target: UISegmentedControl) {
        addSubview(lessionsView)
        lessionsView.translatesAutoresizingMaskIntoConstraints = false
        setSize(view: lessionsView)
        lessionsView.isHidden = false
        addSubview(accountView)
        accountView.translatesAutoresizingMaskIntoConstraints = false
        setSize(view: accountView)
        accountView.isHidden = false
        
        if pageControll.selectedSegmentIndex == 0 {
            lessionsView.isHidden = false
            accountView.isHidden = true
        } else {
            lessionsView.isHidden = true
            accountView.isHidden = false
        }
    }
   
    func setSize(view: UIView) {
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor),
            view.leftAnchor.constraint(equalTo: leftAnchor),
            view.rightAnchor.constraint(equalTo: rightAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -60),
        ])
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
