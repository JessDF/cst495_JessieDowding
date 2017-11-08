//
//  singleton.swift
//  settings
//
//  Created by Jessie Dowding on 10/23/17.
//  Copyright © 2017 cst495_JessieDowding. All rights reserved.
//

import Foundation
import KeychainAccess

class singleton: NSObject {
    static let shared: singleton = {
        let instance = singleton()
        return instance
    }()
    
    var phone: String? {
        get {
            //return UserDefaults.standard.value(forKey: "phone") as? String
            return UserDefaults.standard.string(forKey: "phone")
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: "phone")
        }
    }
    var passwordPhrase: String? {
        get {
            let keychain = Keychain(service: "edu.csumb.jdowding.settings")
            return keychain["pass_phrase"]
        }
        set {
            let keychain = Keychain(service: "edu.csumb.jdowding.settings")
            keychain["pass_phrase"] = newValue
        }
    }
}
