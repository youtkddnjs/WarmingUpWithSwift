//
//  MyTableViewController.swift
//  WarmingUpWithUIKit
//
//  Created by sangwon on 7/12/24.
//

import UIKit

class MyTableViewController: UIViewController,
                             UITableViewDelegate,
                             UITableViewDataSource {
    

    @IBOutlet weak var myTableView: UITableView!
    let cellData = [
        "apple",
        "banana",
        "cherry",
        "date",
        "elderberry",
        "fig",
        "grape",
        "honeydew",
        "kiwi",
        "lemon",
        "mango",
        "nectarine"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        myTableView.backgroundColor = . yellow
        myTableView.delegate = self
        myTableView.dataSource = self
        
    } //override func viewDidLoad()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 스토리보드에서 indentifier를 설정 할 것.
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell" , for: indexPath) 
        
        cell.textLabel?.text = cellData[indexPath.row]
        
        return cell
    }

} //class MyTableViewController

extension MyTableViewController{
    
}
