//
//  DoctorsListController.swift
//  HealthSheet
//
//  Created by macbook oumayma on 21/11/2020.
//

import UIKit

class DoctorsListController: UIViewController ,UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FirstNameDoc.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "tbc", for: indexPath as IndexPath) as! TableDoc
       
        
        return cell
    }
    
   
    
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
  

    
    @IBOutlet weak var tableView: UITableView!
        let FirstNameDoc = ["oumayma","hajer","Nadia","Hama"]
        let LastNameDoc = [("khenine"),("haouet"),("chikhe"),("trabelsi")]
        let imagesDoc = [UIImage(named: "apple"),
                       UIImage(named: "apricot"),
                       UIImage(named: "banana"),
                       UIImage(named: "grapes"),
                       UIImage(named: "kiwi"),
                       UIImage(named: "orange"),
                       UIImage(named: "peach")]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            tableView.dataSource = self
            tableView.delegate = self
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
