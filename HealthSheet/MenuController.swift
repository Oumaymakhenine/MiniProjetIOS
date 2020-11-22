//
//  MenuController.swift
//  HealthSheet
//
//  Created by macbook on 21/11/2020.
//
import SideMenu
import UIKit

class MenuController: UIViewController {
        var menu: SideMenuNavigationController?
        override func viewDidLoad() {
            super.viewDidLoad()
            
            menu = SideMenuNavigationController(rootViewController: MenuListController())
            
            menu?.leftSide = true
            SideMenuManager.default.leftMenuNavigationController = menu
            SideMenuManager.default.addPanGestureToPresent(toView:self.view)
        }
        
        @IBAction func didTapMenu() {
            
            present(menu! ,animated: true)
            
        }
        
    }
class MenuListController: UITableViewController{
     var items = ["Account","About","Notifications","Doctors Near to me","Doctors","Log-Out"]
    let blueColor = UIColor(red: 33/255.0,
                            green: 33/255.0, blue: 33/255.0, alpha: 1)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = blueColor
        tableView.register(UITableViewCell.self, forCellReuseIdentifier:"cell")
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor = blueColor
        return cell
    }
}


