//
//  SettingsVC.swift
//  SnapchatFirebase
//
//  Created by Seyfo on 11.02.2023.
//

import UIKit
import Firebase

class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutClicked(_ sender: Any) {
        
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toWelcomeVC", sender: nil)
        }catch {
            print("Error")
            
        }
        
    }
}
