//
//  AccountController.swift
//  HealthSheet
//
//  Created by macbook on 8/12/2020.
//
import Alamofire
import UIKit

class AccountController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var ln: UITextField!
    @IBOutlet weak var fn: UITextField!
    @IBOutlet weak var username: UILabel!
    
    let serverUrl = "http://192.168.1.49:3000/api/auth/updateuser"

    
    @IBAction func upd(_ sender: Any) {
        
      var  u = Userc(username: username.text as!String, password: "a")
        u.firstname = fn.text as! String
        u.lastname = ln.text as! String
        u.email = email.text as! String
        
        AF.request(serverUrl,
                      method: .post,
                      parameters: u,
                      encoder: JSONParameterEncoder.default).response { response in
   //                    response in
   //                    debugPrint(response)
                       switch response.result {
                       case .success: break

                              
                                  //self.performSegue(withIdentifier: "welcome", sender: dd)
                                  case let .failure(error):
                                  print(error)
                               }
          
                      }
    }

    @IBOutlet weak var update: UIButton!
    var dtaa = "oumayma"
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
