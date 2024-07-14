//
//  ConnectViewController.swift
//  WarmingUpWithUIKit
//
//  Created by sangwon on 7/14/24.
//

import UIKit

struct People{
    let name: String
    let age: Int
}

class ConnectViewController: UIViewController {

    @IBOutlet weak var insertText: UITextField!
    
    var frends: [People] = [
        People(name: "sw", age: 25)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // segue가 이동 될 때 호출되는 함수
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // 이동 되는 segue를 확인 하고 그에 맞는 동작 입력하기
        if segue.identifier == "goSegue"{
            let viewConroller = segue.destination as! NextViewController
            
            viewConroller.inputString = insertText.text!
            
            viewConroller.inputFrends = frends 
        }
    }

}
