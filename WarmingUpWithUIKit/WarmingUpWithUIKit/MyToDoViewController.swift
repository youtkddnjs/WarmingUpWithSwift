//
//  MyToDoViewController.swift
//  WarmingUpWithUIKit
//
//  Created by sangwon on 7/12/24.
//

import UIKit

struct TodoItem{
    let title: String
    var isCompleted: Bool
}

class MyToDoViewController: UIViewController {
    
    @IBOutlet weak var m_tableview: UITableView!

    var celldata: [TodoItem]=[
        TodoItem(title: "공부", isCompleted: true),
        TodoItem(title: "운동", isCompleted: false),
        TodoItem(title: "식사", isCompleted: true)
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        m_tableview.dataSource = self
        m_tableview.delegate = self
        
    } //override func viewDidLoad()

} //class MyToDoViewController

extension MyToDoViewController: UITableViewDelegate,
                                UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return celldata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = m_tableview.dequeueReusableCell(withIdentifier: "tempTableCell", for: indexPath)
        if celldata[indexPath.row].isCompleted{
            cell.textLabel?.textColor = .blue
        }else{
            cell.textLabel?.textColor = .red
        }
        cell.textLabel?.text = celldata[indexPath.row].title
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let myAction = UIContextualAction(style: .normal, title: "Complet!!!") { action, view, myCompletionHander in
            self.celldata[indexPath.row].isCompleted.toggle() // 변경하는 부분
            self.m_tableview.reloadData() //다시 그림
            myCompletionHander(true)
        }
        return UISwipeActionsConfiguration(actions: [myAction])
    }
    
    
}
