//
//  ViewController_1.swift
//  LastLesson
//
//  Created by Studente on 28/04/21.
//

import UIKit

class ViewController_1: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var myDataSource: [Animal]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateDateSource()
    }
    
    func populateDateSource() {
        let cat1 = Dog.init(2, "Dago", "cat")
        let cat2 = Dog.init(2, "Pippo", "cat")
        let dog1 = Dog.init(2, "Aron", "dog")
        let dog2 = Dog.init(2, "Mario", "dog")
        let bird1 = Dog.init(2, "Titty", "bird")
        let bird2 = Dog.init(2, "Calimero", "bird")
        
        self.myDataSource = [cat1,cat2,dog1,dog2,bird1,bird2]
        print(myDataSource!.count)
    }
    
    
    // MARK: - DataSource Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //tornami 10 elementi
        if let count = self.myDataSource?.count {
            return count
        }
        else {
            return 0
        }
    }
    
    // MARK: - TableView Delegate
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // i 10 elementi sono di questi tipo cella qui
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cat_Cell", for: indexPath)
        
        if let dataSource = self.myDataSource {
            let item = dataSource[indexPath.row]
            cell.imageView?.image = UIImage.init(named: item.imgLink)
            cell.detailTextLabel?.text = item.imgLink
            cell.detailTextLabel?.text = item.name
            
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "ShowDetails", sender: nil)
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let myIndexPath = self.myTableView.indexPathForSelectedRow
        
        if segue.identifier != nil {
            let destinationVC = segue.destination as! ViewController_DetailsAnimal
            destinationVC.Animal = self.myDataSource![myIndexPath!.row]
            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }



}
