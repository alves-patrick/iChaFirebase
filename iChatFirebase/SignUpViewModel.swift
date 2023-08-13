//
//  SignUpViewModel.swift
//  iChatFirebase
//
//  Created by Patrick Alves on 13/08/23.
//

import Foundation

class SignUpViewModel:ObservableObject {
    
    var name = ""
    var email = ""
    var password = ""
    
    func signUp() {
        print("nome: \(name), email: \(email), senha: \(password)")
    }
}
