//
//  testViewController.swift
//  HealthSheet
//
//  Created by macbook on 8/12/2020.
//

import UIKit

class testViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    let cellReuseIdentifier = "ReusableTableCell"
    
    var dtaa = "b"
    var tableData = [
        (title:"oumayma", subtitle: "khenine"),
        (title:"nadia", subtitle: "chikh"),
        (title:"hama", subtitle: "hama"),
        (title:"bechir", subtitle: "bechir"),
       
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        let jsonData = Data(dtaa.utf8)

        
        let decoder = JSONDecoder()

        do {
            let people = try decoder.decode(Userc.self, from: jsonData)
            print(people.listofdp[0].username)
            //print(people.listdp[0].username)
          //  print(people.description)
        } catch {
            print(error.localizedDescription)
        }
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

   func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

 func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }

 func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        let row = indexPath.row
        
        cell.textLabel?.text = tableData[row].title
        cell.detailTextLabel?.text = tableData[row].subtitle
        
        return cell
    }

    // Override to support conditional editing of the table view.
   func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    
    
    // Override to support editing the table view.
 func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data
            tableData.remove(at: indexPath.row)
            // Delete the row from the table itself
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
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
