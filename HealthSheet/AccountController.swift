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
    

    let serverUrl = "http://172.16.123.25:3000/api/auth/updateuser"



    
    @IBAction func upd(_ sender: Any) {
        
        var u = Userc( username: "x", password: "a")
         //= fn.text as! String
        // = ln.text as! String
        u.email = email.text as! String
        
        AF.request(serverUrl,
                      method: .post,
                      parameters: u,
                      encoder: JSONParameterEncoder.default).response { response in
   //                    response in
   //                    debugPrint(response)
                       switch response.result {

                       
                       case .success:
                        
                        print("Validation Successful Hama")
                       var dataString = NSString(data: response.data!, encoding:String.Encoding.utf8.rawValue)
                    var   dd = dataString! as String
                       
//                                let data = response.data
                      print(dd)
                              

                                  //self.performSegue(withIdentifier: "welcome", sender: dd)
                                  case let .failure(error):
                                  print(error)
                               }
          
                      }
    }

    @IBOutlet weak var update: UIButton!
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
