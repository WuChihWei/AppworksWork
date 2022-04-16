//
//  ViewController.swift
//  Week4-1
//
//  Created by Jordan Wu on 2022/4/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    let contents = [
    "This is section 0, row 0",
    "This is section 0, row 1",
    "This is section 0, row 2",
    "This is section 0, row 3",
    "This is section 0, row 4",
    "This is section 0, row 5",
    "This is section 0, row 6",
    "This is section 0, row 7",
    "This is section 0, row 8",
    "This is section 0, row 9"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }


}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me!")
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = contents[indexPath.row]
        
        return cell
    }
}
