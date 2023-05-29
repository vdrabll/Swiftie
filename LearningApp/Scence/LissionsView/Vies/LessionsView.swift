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
        self.tableView.backgroundColor = .clear
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
        tableView.showsVerticalScrollIndicator = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leftAnchor.constraint(equalTo: leftAnchor, constant: 25),
            tableView.rightAnchor.constraint(equalTo: rightAnchor, constant: -25),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25),
        ])
    }
}

extension LessionsView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
            let headerView = UIView()
            headerView.backgroundColor = UIColor.clear
            return headerView
        }
    func numberOfSections(in tableView: UITableView) -> Int {
        20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LessionTableViewCell.identifire, for: indexPath) as! LessionTableViewCell
//        cell.heightAnchor.constraint(equalToConstant: 140).isActive = true
        cell.layer.cornerRadius = 25
        cell.backgroundColor = .red
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        15
    }
    
}
   
// TODO: get number of cells from db


