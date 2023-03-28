//
//  LogInVC.swift
//  SnapchatFirebase
//
//  Created by Seyfo on 11.02.2023.
//

import UIKit
import Firebase

class LogInVC: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logInClicked(_ sender: Any) {
        if emailText.text != "" && passwordText.text != "" {
            
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!) { auth, error in
                if error != nil {
                    self.makeAlert(titleInput: "Error", MessageInput: error?.localizedDescription ?? "Error")
                }else {#imageLiteral(resourceName: "simulator_screenshot_5A27B4D6-5C3D-4F37-B3C6-8CEB526069B8.png")
                    self.performSegue(withIdentifier: "loginToFeed", sender: nil)
                }
            }
        }else {
            makeAlert(titleInput: "Error", MessageInput: "Username/Email/Password ?")
            
        }
        
        #imageLiteral(resourceName: "simulator_screenshot_A62B6FB9-FDB1-4E94-99F9-AA6B5D93EB1C.png")
        
        
    }
    func makeAlert (titleInput:String, MessageInput:String) {
        let alert = UIAlertController(title: titleInput, message: MessageInput, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
}
