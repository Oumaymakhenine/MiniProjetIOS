//
//  DoctorsListController.swift
//  HealthSheet
//
//  Created by macbook on 21/11/2020.
//

import UIKit

class DoctorsListController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    let data=["El Camino","Extraction","Project Power","Project Power","Project Power"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = tableView.dequeueReusableCell(withIdentifier: "Cell")
        let cv = cel?.contentView
        
        let lab = cv?.viewWithTag(2) as! UILabel
        let lab2 = cv?.viewWithTag(3) as! UILabel
        lab.text = data[indexPath.row]
        lab2.text = data[indexPath.row]
        let img = cv?.viewWithTag(1) as! UIImageView
        
         img.image = UIImage(named: data[indexPath.row])
        
        
        return cel!
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let index = sender as! Int
        let dd = segue.destination as! SecendDocLController
        let d = data[index]
        
       // dd.movies = d
    
     
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "DocL", sender: indexPath.row)
        
        
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
