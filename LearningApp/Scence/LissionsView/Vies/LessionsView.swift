//
//  LessionsView.swift
//  LearningApp
//
//  Created by Виктория Федосова on 25.05.2023.
//

import UIKit

class LessionsView: UIView{
    
     var viewModel = LessionViewModel()
    
    var tableView: UITableView = {
        var table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(LessionTableViewCell.self, forCellReuseIdentifier: LessionTableViewCell.identifire)
        return table
    }()

    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
extension LessionsView {
    private func setupSubviews() {
        self.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leftAnchor.constraint(equalTo: leftAnchor),
            tableView.rightAnchor.constraint(equalTo: rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
        ])
    }
}


extension LessionsView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        34 //get number of cells from db
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LessionTableViewCell.identifire, for: indexPath) as! LessionTableViewCell
        cell.backgroundColor = .red
        return cell
    }
}
    
