//
//  NextViewController.swift
//  WarmingUpWithUIKit
//
//  Created by sangwon on 7/14/24.
//

import UIKit

class NextViewController: UIViewController {
    
    
    @IBOutlet weak var NextViewLabel: UILabel!
    
    var inputString: String = ""
    var inputFrends: [People] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        NextViewLabel.text = inputString
        
        NextViewLabel.text = inputFrends.first?.name
        
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
