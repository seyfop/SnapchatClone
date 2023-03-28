//
//  UserSingleton.swift
//  SnapchatFirebase
//
//  Created by Seyfo on 12.02.2023.
//

import Foundation

class UserSingleton {
    
    static let sharedUserInfo = UserSingleton()
    
    var email = ""
    var username = ""
    
    
    private init () {
        
    }
}

