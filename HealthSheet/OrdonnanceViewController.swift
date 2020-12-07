import Alamofire
import UIKit

class OrdonnanceViewController: UIViewController {

    
     let path : String = "http://192.168.1.41:3000/api/createordon/" ;

    @IBAction func send(_ sender: Any) {
        
        
        let o = Ordonnance(medicaments: medicaments.text!)
        
        AF.request(path,
                    method: .post,
                    parameters: o,
                    encoder: JSONParameterEncoder.default).response { response in
 //                    response in
 //                    debugPrint(response)
                     switch response.result {
                             case .success:
                                 print("Ordonnance added")
                                var dataString = NSString(data: response.data!, encoding:String.Encoding.utf8.rawValue)
                             var   dd = dataString! as String
 //                                let data = response.data
                                print(dd)
                              //  self.performSegue(withIdentifier: "welcome", sender: dd)
                             case let .failure(error):
                                 print(error)
                             }
        
                    }
        
        
    }
    @IBOutlet weak var medicaments: UITextView!
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
