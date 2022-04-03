//
//  ViewController.swift
//  Week2_App
//
//  Created by Jordan Wu on 2022/4/2.
//

import UIKit

class ViewController:
    UIViewController {
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var bottomButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showChanged(_ sender: UIButton) {
        
        
        let red = UIColor(red: 229/255, green: 65/255, blue: 0/255, alpha: 1.0)
        let orange = UIColor(red: 255/255, green: 144/255, blue: 0/255, alpha: 1.0)
        let yellow = UIColor(red: 233/255, green: 237/255, blue: 0/255, alpha: 1.0)
        let green = UIColor(red: 0/255, green: 175/255, blue: 26/255, alpha: 1.0)
        let blue = UIColor(red: 0/255, green: 181/255, blue: 221/255, alpha: 1.0)
        let purple = UIColor(red: 160/255, green: 0/255, blue: 214/255, alpha: 1.0)
        let black = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0)
        
        let colors = [red, orange, yellow, green, blue, purple, black]
        
        func color() -> UIColor {
            return colors.randomElement()!
          }
          self.view.backgroundColor = color()

        
        let textContents = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.", "Contrary to popular belief, Lorem Ipsum is not simply random text.", "Richard McClintock, a Latin professor at Hampden-Sydney College in ", "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cities of the word", "This book is a treatise on the theory of ethics, very popular during the.", "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."]
        
        func textcontent() -> String {
            return textContents.randomElement()!
        }
        middleLabel.text = textcontent()
    }
}
