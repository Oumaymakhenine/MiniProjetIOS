//
//  WelcomeViewController.swift
//  HealthSheet
//
//  Created by Hama on 11/30/20.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    var dtaa = "dataaaa"
    
    @IBOutlet weak var email: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        let jsonData = Data(dtaa.utf8)

        
        let decoder = JSONDecoder()

        do {
            let people = try decoder.decode(User.self, from: jsonData)
            print(people.email)
            email.text = people.email
            username.text = people.username
          //  print(people.description)
        } catch {
            print(error.localizedDescription)
        }
        
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
