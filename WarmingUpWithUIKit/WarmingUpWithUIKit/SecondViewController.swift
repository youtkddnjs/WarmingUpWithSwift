//
//  SecondViewController.swift
//  WarmingUpWithUIKit
//
//  Created by sangwon on 7/11/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextFiled: UITextField!
    @IBOutlet weak var resultString: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green

        // Do any additional setup after loading the view.
    }

    @IBAction func actionMyButton(_ sender: Any) {
        if let nameString = nameTextFiled.text{
          resultString.text = "Insert String : \(nameString)"
      }
    }
    
    
    /*,
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
