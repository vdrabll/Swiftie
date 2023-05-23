//
//  FieldsView.swift
//  LearningApp
//
//  Created by Виктория Федосова on 23.05.2023.
//

import UIKit

final class FieldsView: UIView {
   var nameLable: UILabel = {
        let lable = UILabel()
        lable.text = Constants.lableName
        lable.adjustsFontSizeToFitWidth = true
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.font = UIFont(name: Constants.fontName, size: Constants.fontLargeSize)
        return lable
    }()
    
    var suggestSingUpLable: UILabel = {
         let lable = UILabel()
        lable.text = Constants.lableSingupSuggestion
         lable.adjustsFontSizeToFitWidth = true
         lable.translatesAutoresizingMaskIntoConstraints = false
        lable.font = UIFont(name: Constants.fontName, size: Constants.fontMediumSize)
         return lable
     }()
    
    var singUpButton: UILabel = {
        let button = UILabel()
        button.text = Constants.buttonSingupText
        button.font = UIFont(name: Constants.fontName, size: Constants.fontMediumSize)
        button.textColor = .blue
        button.adjustsFontSizeToFitWidth = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var lableNumber: UILabel = {
        let lable = UILabel()
        lable.text = Constants.lableNumber
        lable.font = UIFont(name: Constants.fontName, size: Constants.fontMediumSize)
        lable.adjustsFontSizeToFitWidth = true
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    var phoneTextField: UITextField = {
        var field = UITextField()
        field.text = Constants.fieldNumberDefoultText
        field.layer.cornerRadius = 15
        field.borderStyle = .roundedRect
        field.translatesAutoresizingMaskIntoConstraints = false
//        field.inputDelegate изучить метод потом
        field.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        return field
    }()
    
    var lablePassword: UILabel = {
        let lable = UILabel()
        
        lable.text = Constants.lablePassword
        lable.font = UIFont(name: Constants.fontName, size: Constants.fontMediumSize)
        lable.adjustsFontSizeToFitWidth = true
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    var passwordTextField: UITextField = {
        var field = UITextField()
        field.text = Constants.fieldPaswordDefoultText
        field.layer.cornerRadius = 15
        field.translatesAutoresizingMaskIntoConstraints = false
        field.borderStyle = .roundedRect
//        field.inputDelegate изучить метод потом
        field.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        return field
    }()
    
    var forgetPasswordLable: UILabel = {
        let lable = UILabel()
        lable.text = Constants.forgetPassword
        lable.textColor = .red
        lable.font = UIFont(name: Constants.fontName, size: Constants.fontMediumSize)
        lable.adjustsFontSizeToFitWidth = true
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    var contunueButton: UIButton = {
        let lable = UIButton()
        lable.setTitle( Constants.lableContunie, for: .normal)
        lable.titleLabel?.textColor = .white
        lable.backgroundColor = .orange
        lable.layer.cornerRadius = 10
        lable.titleLabel?.font = UIFont(name: Constants.fontName, size: Constants.fontMediumSize)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    private enum Constants {
        static let fontName = "Arial"
        static let fontLargeSize: CGFloat = 28
        static let fontMediumSize: CGFloat = 15
        static let lableName = "Авторизация"
        static let lableSingupSuggestion = "Хотите создать новый аккаунт?"
        static let buttonSingupText = "Регистрация"
        static let lableNumber = "Номер телефона"
        static let fieldNumberDefoultText = "+7 (000)000-00-00 "
        static let lablePassword = "Пароль"
        static let fieldPaswordDefoultText = "Введите свой пароль"
        static let forgetPassword = "Забыли пароль?"
        static let lableContunie = "Продолжить"
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupView()
        setupSubviews()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 20
    }
    
}

private extension FieldsView {
    func setupSubviews() {
        self.addSubview(nameLable)
        self.addSubview(suggestSingUpLable)
        self.addSubview(singUpButton)
        self.addSubview(lableNumber)
        self.addSubview(phoneTextField)
        self.addSubview(lablePassword)
        self.addSubview(passwordTextField)
        self.addSubview(forgetPasswordLable)
        self.addSubview(contunueButton)
        
        NSLayoutConstraint.activate([
            nameLable.topAnchor.constraint(equalTo: self.topAnchor, constant: 42),
            nameLable.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 109),
            suggestSingUpLable.topAnchor.constraint(equalTo: self.topAnchor, constant: 84),
            suggestSingUpLable.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 41),
            singUpButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 84),
            singUpButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 264),
            lableNumber.topAnchor.constraint(equalTo: self.topAnchor, constant: 139),
            lableNumber.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 39),
            phoneTextField.widthAnchor.constraint(equalToConstant: 330),
            phoneTextField.heightAnchor.constraint(equalToConstant: 50),
            phoneTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 170),
            phoneTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 35),
            lablePassword.topAnchor.constraint(equalTo: self.topAnchor, constant: 230),
            lablePassword.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 35),
            passwordTextField.widthAnchor.constraint(equalToConstant: 330),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.topAnchor.constraint(equalTo: self.topAnchor, constant: 255),
            passwordTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 35),
            forgetPasswordLable.topAnchor.constraint(equalTo:self.topAnchor, constant: 321),
            forgetPasswordLable.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 41),
            contunueButton.widthAnchor.constraint(equalToConstant: 330),
            contunueButton.heightAnchor.constraint(equalToConstant: 50),
            contunueButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 376),
            contunueButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 32)
            ])
    }
}
