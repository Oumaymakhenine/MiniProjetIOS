//
//  SideMenuPViewController.swift
//  HealthSheet
//
//  Created by Hama on 12/14/20.
//

import UIKit

class SideMenuPViewController: UIViewController {

    @IBAction func btnDoctrs(_ sender: Any) {
        performSegue(withIdentifier: "docl", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
