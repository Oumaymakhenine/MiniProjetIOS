//
//  PickImageViewController.swift
//  HealthSheet
//
//  Created by Hama on 12/6/20.
//

import UIKit

class PickImageViewController: UIViewController {

    @IBOutlet var UIPickerr: UIPickerView!
       override func viewDidLoad() {
           super.viewDidLoad()
       }
    
    @IBOutlet weak var picture: UIImageView!
    @IBAction func pickme(_ sender: Any) {
        pick()
       }
   }
    extension PickImageViewController:UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    func pick() {
        let ipcontroller = UIImagePickerController()
        ipcontroller.delegate = self
        ipcontroller.allowsEditing = true
        ipcontroller.sourceType = .photoLibrary
        present(ipcontroller, animated: true, completion: nil)
    }
        
       func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        if let editedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            self.picture.image = editedImage.withRenderingMode(.alwaysOriginal)
        } else if let originalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.picture.image = originalImage.withRenderingMode(.alwaysOriginal)
        }
        dismiss(animated: true, completion: nil)
       
       }
    
}
