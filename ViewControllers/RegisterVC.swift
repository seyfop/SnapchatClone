//
//  RegisterVC.swift
//  SnapchatFirebase
//
//  Created by Seyfo on 11.02.2023.
//

import UIKit
import Firebase

class RegisterVC: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerButtonClicked(_ sender: Any) {
        if usernameText.text != "" && emailText.text != "" && passwordText.text != "" {
            
            Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!) { auth, error in
                if error != nil {
                    self.makeAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "Error")
                
                }else {
                    let fireStore = Firestore.firestore()
                    
                    let userDictionary = ["email": self.emailText.text!, "username": self.usernameText.text!] as! [String:Any]
                    fireStore.collection("UserInfo").addDocument(data: userDictionary) { error in
                        if error != nil {
                            //
                        }
                    }
                    
                    self.performSegue(withIdentifier: "registerToFeed", sender: nil)
                    
                
                }
            }
            
            
        }else {
            self.makeAlert(titleInput: "Error", messageInput: "Username/Password/Email ?")
            
        }
        
        
        
    }
    func makeAlert (titleInput:String, messageInput:String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
}
