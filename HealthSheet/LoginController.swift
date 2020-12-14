//
//  LoginController.swift
//  HealthSheet
//
//  Created by macbook on 21/11/2020.
//

import Alamofire
import UIKit

class LoginController: UIViewController {

    let serverUrl = "http://172.16.123.25:3000/api/auth/signin"
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var dta = sender as! String
        let dest = segue.destination as! FirstViewController
        FirstViewController.dtaa = dta
    }

  
    
    
    @IBAction func loginAction(_ sender: Any) {
        

        let x = "x"
        let rol = Role(name: "Doctor")
        print("jkbcd")
        let roles = [rol]
     //  let  u = User(username: usrp.text!,email: x, password: usrp.text!,role: roles)
        var u = Userc( username: usrn.text!, password: usrp.text!)

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
                                
                            

                               self.performSegue(withIdentifier: "first", sender: dd)

                            //    self.performSegue(withIdentifier: "welcome", sender: dd)

                                case let .failure(error):
                                print(error)
                             }
        
                    }}
    @IBOutlet weak var usrp: UITextField!
    @IBOutlet weak var usrn: UITextField!
    
    func affect( p : inout String , pp:inout String)  {
    
        p = pp
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
 
        
       /* AF.request(serverUrl,
                   method: .post,
                   parameters: u,
                   encoder: JSONParameterEncoder.default).response { response in
//                    response in
//                    debugPrint(response)
                    switch response.result {
                            case .success:
                                print("Validation Successful Hama")
//                                let data = response.data
//                                print(data)
                            case let .failure(error):
                                print(error)
                            }
        }*/
      //  let decoder = JSONDecoder()
        
            
    
        
      /*  let queue = DispatchQueue(label: "WithdrawalQueue", attributes: .concurrent)
        queue.async {
            
        
        AF.request(serverUrl,
                   method: .post,
                   parameters: u,
                   encoder: JSONParameterEncoder.default).response { response   in
                    
                    var dataString = NSString(data: response.data!, encoding:String.Encoding.utf8.rawValue)
                    dd = dataString! as String
                
                    
                   }
            
        
        }*/

    }}
