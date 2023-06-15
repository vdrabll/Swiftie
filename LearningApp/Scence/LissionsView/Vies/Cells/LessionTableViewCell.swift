//
//  LessionTableViewCell.swift
//  LearningApp
//
//  Created by Виктория Федосова on 25.05.2023.
//
// TODO: попроваить положение лейблов на ячейке когда загружу реальные данные


import UIKit

class LessionTableViewCell: UITableViewCell {
    
    static let identifire = "LessionTableViewCell"
    
    var lessionNumber: UILabel = {
        var lable = UILabel()
        lable.font = UIFont(name: "American Typewriter", size: 20)
        lable.textColor = .orange
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    var lessionName: UILabel = {
        var lable = UILabel()
        lable.textColor = .orange
        lable.font = UIFont(name: "American Typewriter", size: 20)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
           super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        contentView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        contentView.layer.cornerRadius = 15
            setupSubview()
           
       }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

private extension LessionTableViewCell {
    func setupSubview() {
        addSubview(lessionName)
        addSubview(lessionNumber)
        
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: 100),
            lessionNumber.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            lessionNumber.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            
            lessionName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
            lessionName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 100)
        ])
    }
}
