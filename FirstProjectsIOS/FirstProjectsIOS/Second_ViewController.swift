//
//  Second_ViewController.swift
//  FirstProjectsIOS
//
//  Created by Studente on 26/04/21.
//

import UIKit

class Second_ViewController: UIViewController {


    @IBOutlet weak var buttonSecondViewC: UIButton!
    var Animal: Animal?
    var nameText: String?
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        //tornare indietro di 'schermata' con metodo e non con VC
    }
    
    func setUI() {
        if let myAnimal = self.Animal {
            self.nameLabel.text = myAnimal.name
        }
        if let name = self.nameText {
            self.nameLabel.text = name
        }
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        if let identifier = segue.identifier {
//            if identifier == "moveto1" {
//                let destinationVC = segue.destination as! Second_ViewController
//                destinationVC.nameText = "incoroneta"
//        }
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


