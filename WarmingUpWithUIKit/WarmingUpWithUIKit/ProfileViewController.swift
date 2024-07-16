//
//  ProfileViewController.swift
//  WarmingUpWithUIKit
//
//  Created by sangwon on 7/15/24.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profileData = [
        "아이디", "이메일", "연락처"
    ]

    @IBOutlet weak var profileTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profileTableView.delegate = self
        profileTableView.dataSource = self
        
    }//override func viewDidLoad()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "profileSegue"{
            let vc = segue.destination as! ProfileDetailViewController
            vc.inputDetailText = profileData[0]
        }
    }

} //class ProfileViewController

extension ProfileViewController: 
    UITableViewDelegate,
    UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return profileData.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = profileTableView.dequeueReusableCell(withIdentifier: "prifileCell", for: indexPath)
        
        cell.textLabel?.text = profileData[indexPath.row]
        
        return cell
        
    }
    
    
    
}
