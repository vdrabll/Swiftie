//
//  AuthenticationServises.swift
//  LearningApp
//
//  Created by Виктория Федосова on 02.06.2023.
//
 
import Foundation
import FirebaseAuth
import FirebaseFirestore

final class AuthenticationServises {
    public static var shared = AuthenticationServises()
    
    private init() {
         
    }
    
     
    public func userRegister(with userRequest: RedisterUserRequest, compitionhandler: @escaping (Bool, Error?) -> Void) {
        let email = userRequest.email
        let password = userRequest.password
        let username = userRequest.username
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error  {
                compitionhandler(false, error)
                return
            }
            
            guard let resultUser = result?.user else {
                compitionhandler(false, nil)
                return
            }
            
            let db = Firestore.firestore()
            db.collection("users")
                .document(resultUser.uid)
                .setData([
                    "username": username,
                    "email": email
                ]) { error  in
                    if let error = error  {
                        compitionhandler(false, error)
                        return
                    }
                    
                    compitionhandler(true, nil)
                }
        }
    }
    
}
