//
//  ViewController.swift
//  FirstProjectsIOS
//
//  Created by Studente on 07/04/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btn: UIButton!
    
    var Animals: [Animal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("VC1-viewDidLoad")
        populateData()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("VC1-viewDidAppear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("VC1-viewWillAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("VC1-viewDidDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("VC1-viewWillDisappear")
    }

    
    func populateData() {
        let myCat = Cat.init(4,"Cat","imgLinkOfCat")
        let myBird = Bird.init(2, "Bird", "imgLinkOfBird")
        self.Animals.append(myCat)
        self.Animals.append(myBird)
        print("\(Animals.count) numbers of animals")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let identifier = segue.identifier {
            if identifier == "moveto1" {
                let destinationVC = segue.destination as! Second_ViewController
                destinationVC.nameText = "incoroneta"
        }
    
    //@IBOutlet weak var labeltitle: UILabel!
    //weak significa debole, ci pensa l'os
}
    }
    
}



