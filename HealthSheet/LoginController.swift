//
//  LoginController.swift
//  HealthSheet
//
//  Created by macbook on 21/11/2020.
//
import Alamofire
import UIKit

class LoginController: UIViewController {

    @IBAction func loginAction(_ sender: Any) {
        
        
    }
    @IBOutlet weak var usrp: UITextField!
    @IBOutlet weak var usrn: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let serverUrl = "http://192.168.1.102:3000/api/auth/signin"
       //let serverUrl = "http://192.168.1.12:3000/api/auth/signin"
        
        let x = "x"
        let rol = Role(nom: "Doctor")
        
        let  u = User(username: x, firstName: x, lastName: x, email: x, password: x, role: rol)
 
        
        AF.request(serverUrl,
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
        }
    


    }}
