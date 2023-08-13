//
//  SignInViewModel.swift
//  iChatFirebase
//
//  Created by Patrick Alves on 13/08/23.
//

import Foundation

class SignInViewModel:ObservableObject {
    
    var email = ""
    var password = ""
    
    func sigIn() {
        print("email: \(email), senha: \(password)")
    }
}
