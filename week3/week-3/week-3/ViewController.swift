////  ViewController.swift
//  week-3
//
//  Created by Jordan Wu on 2022/4/5.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var checkUILabel: UILabel!
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var clickinButton: UIButton!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
   
    @IBAction func segmentedChanged(_ sender: Any) {
        
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            self.checkTextField.isUserInteractionEnabled = false
            self.checkTextField.text = ""
            self.checkTextField.backgroundColor = UIColor.gray
            self.checkUILabel.textColor = UIColor.gray
        case 1:
            self.checkTextField.isUserInteractionEnabled = true
            self.checkTextField.backgroundColor = UIColor.white
            self.checkUILabel.textColor = UIColor.black
            
        default:
        break
        }
        
    }
    
    @IBAction func checked(_ sender: Any) {
        
         
        if accountTextField.text?.isEmpty == true {
            let controller = UIAlertController(title: "", message: "Account should not be empty.", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            controller.addAction(okAction)
            present(controller, animated: true, completion: nil)
    }
        
        else if passwordTextField.text?.isEmpty == true {
             let controller = UIAlertController(title: "", message: "Passsword should not be empty.", preferredStyle: .alert)
             let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
             controller.addAction(okAction)
             present(controller, animated: true, completion: nil)
         }
        
       else if checkTextField.text?.isEmpty == true && segmentedControl.selectedSegmentIndex == 1 {
            let controller = UIAlertController(title: "", message: "Check Passsword should not be empty.", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            controller.addAction(okAction)
            present(controller, animated: true, completion: nil)
        }
        
        
 if (segmentedControl.selectedSegmentIndex == 0 && accountTextField.text == "appworks_school@gmail.com" && passwordTextField.text == "1234") {
        let controller = UIAlertController(title: "Success", message: "Success", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
    }

    else if segmentedControl.selectedSegmentIndex == 0 { let controller = UIAlertController(title: "", message: "Login fail.", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            controller.addAction(okAction)
            present(controller, animated: true, completion: nil)
    }

if (segmentedControl.selectedSegmentIndex == 1 && accountTextField.text?.isEmpty == false && passwordTextField.text == checkTextField.text &&  passwordTextField.text?.isEmpty == false && checkTextField.text?.isEmpty == false) {
               let controller = UIAlertController(title: "Success", message: "Success", preferredStyle: .alert)
               let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
               controller.addAction(okAction)
               present(controller, animated: true, completion: nil)
           }
               
           else if segmentedControl.selectedSegmentIndex == 1 { let controller = UIAlertController(title: "", message: "Signup fail.", preferredStyle: .alert)
                   let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                   controller.addAction(okAction)
                   present(controller, animated: true, completion: nil)
           }
        
        
   
    }

override func viewDidLoad() {
    super.viewDidLoad()
    
    let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
    segmentedControl.setTitleTextAttributes(titleTextAttributes, for:.normal)
    
    let titleTextAttributes1 = [NSAttributedString.Key.foregroundColor: UIColor.white]
    segmentedControl.setTitleTextAttributes(titleTextAttributes1, for:.selected)
    segmentedControl.backgroundColor = UIColor.white
    segmentedControl.layer.borderColor = UIColor.black.cgColor
    segmentedControl.selectedSegmentTintColor = UIColor.black
    segmentedControl.layer.borderWidth = 1
   
}
//fff
}
