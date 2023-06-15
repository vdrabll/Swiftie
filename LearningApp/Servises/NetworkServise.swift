//
//  NetworkServise.swift
//  LearningApp
//
//  Created by Виктория Федосова on 22.05.2023.
//  Задача: получать тему по id

import Foundation

final class NetworkServise {
    private enum Constants {
        static let url = "http://127.0.0.1:8080/lessions/@s"
    }
    
    func fetchLession(with id:String, compilionHandler: @escaping (Lession) -> ()) {
        let url = URL(string: String(format: Constants.url, id))
        let request = URLRequest(url: url!)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if data != nil {
                if error == nil, (response as? HTTPURLResponse)?.statusCode == 200 {
                    do {
                        let lession = try JSONDecoder().decode(Lession.self, from: data!)
                        compilionHandler(lession)
                    } catch {
                        print(String(describing: error))
                    }
                }
            }
        }
        task.resume()
        
    }
    
}
