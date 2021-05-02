//
//  Dog.swift
//  LastLesson
//
//  Created by Studente on 28/04/21.
//

import Foundation

class Dog: Animal {
    var lengs: Int
    
    init(_ lengs:Int,_ name: String, _ imgLink: String) {
        self.lengs = lengs
        super.init(name, imgLink)
    }
}
