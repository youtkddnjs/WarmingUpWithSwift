//
//  ViewController.swift
//  WarmingUpWithUIKit
//
//  Created by sangwon on 7/11/24.
//

import UIKit

protocol AdminDelegate{
    //1. 위임을 받고 해야하는 작업
    func doTask()
}

class ViewController: UIViewController {

    @IBOutlet weak var mainTextView: UITextView!
    var admin: Admin?
    
    @IBAction func myButton(_ sender: Any) {
        print("Click !!!")
        admin?.delegate.doTask()
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        //3. self 즉, ViewController 가 위임 받게됨
        admin = Admin(delegate: self)
    } //override func viewDidLoad()

} //class ViewController: UIViewController

extension ViewController: AdminDelegate{
    func doTask() {
        print("Do it !!")
    }
    
    //4. 위임 받았으니 하는 작업

}

struct Admin{
    //2. 위임 받을 준비
    var delegate : AdminDelegate
}
 
