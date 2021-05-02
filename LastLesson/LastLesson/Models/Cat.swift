//
//  cat.swift
//  FirstProjectsIOS
//
//  Created by Studente on 26/04/21.
//

import Foundation

class Cat: Animal {
    var lengs: Int
    
    init(_ lengs:Int,_ name: String, _ imgLink: String) {
        self.lengs = lengs
        super.init(name, imgLink)
    }
}
