//
//  AddListViewController.swift
//  TableViewApp
//
//  Created by 佐藤壮 on 2023/08/29.
//

import UIKit

class AddListViewController: UIViewController {
    
    
    @IBOutlet weak var addTextField: UITextField!
    var taskArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let userDefaults = UserDefaults.standard
        if userDefaults.object(forKey: "add") != nil {
            taskArray = userDefaults.object(forKey: "add") as! [String]
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTask(_ sender: Any) {
        if let judge = addTextField.text, !judge.isEmpty {
            let userDefaults = UserDefaults.standard
            taskArray.append(judge)
            userDefaults.set(taskArray, forKey: "add")
            self.navigationController?.popViewController(animated: true)
        } else {
            
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
