//
//  ViewController.swift
//  FirstProjectsIOS
//
//  Created by Studente on 07/04/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("viewDidAppear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("viewWillAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("viewDidDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("viewWillDisappear")
    }

    @IBAction func bottone(_ sender: Any) {
        print("pippo")
    }
    
    @IBOutlet weak var labeltitle: UILabel!
    //weak significa debole, ci pensa l'os
}

