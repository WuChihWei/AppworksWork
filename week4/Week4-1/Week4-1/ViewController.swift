//
//  ViewController.swift
//  Week4-1
//
//  Created by Jordan Wu on 2022/4/14.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


//    var contents = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        for index in 0...9 {
//            contents.append("This is section 0, row \(index)")
//        }
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
//        let content = contents[indexPath.row]
        cell.textLabel?.text = "This is section \(indexPath.section), row \(indexPath.row)"
    
            return cell
        }
}
