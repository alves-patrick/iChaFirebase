//
//  SignInViewModel.swift
//  iChatFirebase
//
//  Created by Patrick Alves on 13/08/23.
//

import Foundation
import FirebaseAuth

class SignInViewModel:ObservableObject {
    
    var email = ""
    var password = ""
    
    @Published var image = UIImage()
    
    @Published var formInvalid = false
    var alertText = ""
    
    @Published var isLoading = false
    
    
    func signIn() {
        print("email: \(email), senha: \(password)")
        
        isLoading = true
        
        Auth.auth().signIn(withEmail: email, password: password) {
            result, err in
            guard let user = result?.user, err == nil else {
                self.formInvalid = true
                self.alertText = err!.localizedDescription
                print(err)
                self.isLoading = false
                return
            }
            self.isLoading = false
            print("Usuario logado\(user.uid)")
        }
    }
}
