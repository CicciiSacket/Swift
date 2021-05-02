//
//  bird.swift
//  FirstProjectsIOS
//
//  Created by Studente on 26/04/21.
//

import Foundation

class Bird: Animal {
    var wings: Int
    
    init(_ wings:Int,_ name: String, _ imgLink: String) {
        self.wings = wings
        super.init(name, imgLink)
    }
}
