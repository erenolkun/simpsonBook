//
//  detailsVC.swift
//  simpsonBook
//
//  Created by FERDA OLKUN on 26.02.2023.
//

import UIKit

class detailsVC: UIViewController {
    
    var selectedSimpson : simpson?

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var jobLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
        
    }
 
}
