//
//  testdocViewController.swift
//  HealthSheet
//
//  Created by macbook on 8/12/2020.
//

import UIKit

class testdocViewController: UIViewController {
    @IBOutlet weak var fifi: UITextField!
    
    @IBOutlet weak var RaringDoc: UIStackView!
    @IBOutlet weak var imageDoc: UIImageView!
    var itemToEdit: (title: String, subtitle: String)?

   
@IBOutlet weak var textfi: UITextField!
    
    @IBOutlet weak var RatingDoc: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let itemToEdit = itemToEdit {
            fifi.text = itemToEdit.title
            textfi.text = itemToEdit.subtitle
        
        }

}
}
