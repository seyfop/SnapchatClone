//
//  ViewController.swift
//  SnapchatFirebase
//
//  Created by Seyfo on 11.02.2023.
//

import UIKit

class welcomeVC: UIViewController {

    @IBOutlet weak var titleLabelOne: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabelOne.text = "Snapchat Clone"
        
        titleLabelOne.text = ""
        var charIndex = 0.0
        let titleText = "Snapchat Clone"
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1*charIndex, repeats: false) { (timer) in
                self.titleLabelOne.text?.append(letter)
            }
            charIndex += 1
            
        }
     
        
    }


}

