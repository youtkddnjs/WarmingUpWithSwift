//
//  ProfileDetailViewController.swift
//  WarmingUpWithUIKit
//
//  Created by sangwon on 7/15/24.
//

import UIKit

class ProfileDetailViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    
    var inputDetailText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailLabel.text = inputDetailText
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
