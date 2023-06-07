//
//  NetworkServise.swift
//  LearningApp
//
//  Created by Виктория Федосова on 22.05.2023.
//  Задача: получать тему по id

import Foundation

final class NetworkServise {
    
    let session = URLSession(configuration: .default)
    let urlRequest =  URLRequest(url: URL(string: Constants.url)!)
    
    private enum Constants {
        static let url = "http://127.0.0.1:8080/lessions/@s"
    }
    
    
}
