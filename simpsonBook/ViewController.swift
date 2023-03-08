//
//  ViewController.swift
//  simpsonBook
//
//  Created by FERDA OLKUN on 26.02.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [simpson]()
    var chosenSimpson : simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        //simpson Objects
        
        let homer = simpson(simpsonName: "homer", simpsonJob: "nuclear safety", simpsonImage:UIImage(named: "homer")!)
        
        let barney = simpson(simpsonName: "barney", simpsonJob: "barney's job", simpsonImage:UIImage(named: "barney")!)
        
        let bart = simpson(simpsonName: "bart", simpsonJob: "bart's job", simpsonImage:UIImage(named: "bart")!)
        
        let moe = simpson(simpsonName: "moe", simpsonJob: "moe's job", simpsonImage:UIImage(named: "moe")!)
        
        let ned = simpson(simpsonName: "ned", simpsonJob: "ned's job", simpsonImage:UIImage(named: "ned")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(barney)
        mySimpsons.append(bart)
        mySimpsons.append(moe)
        mySimpsons.append(ned)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVc" , sender: nil)
    }
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVc"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
}



