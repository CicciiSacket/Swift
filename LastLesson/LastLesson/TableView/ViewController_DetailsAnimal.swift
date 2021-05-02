//
//  ViewController_DetailsAnimal.swift
//  LastLesson
//
//  Created by Studente on 28/04/21.
//

import UIKit

class ViewController_DetailsAnimal: UIViewController {

    @IBOutlet weak var ImageDetails: UIImageView!
    @IBOutlet weak var NameAnimals: UILabel!
    
    var Animal: Animal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }

    func setUI() {
        if let currentAnimal = Animal {
            self.ImageDetails.image = UIImage.init(named: currentAnimal.imgLink)
            self.NameAnimals.text = currentAnimal.name
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let myIndexPath = self.myTableView.indexPathForSelectedRow
//        if segue.identifier != nil {
//            let destinationVC = segue.destination as! ViewController_DetailsAnimal
//            ViewController_DetailsAnimal.Animal = self.myDataS
//        }
//    }
    

}
