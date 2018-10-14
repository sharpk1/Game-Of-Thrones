//
//  ViewController.swift
//  Game of Thrones
//
//  Created by Kush Shah on 10/11/18.
//  Copyright © 2018 Kush Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var centerImage: UIImageView!
    @IBOutlet weak var topLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        centerImage.image = #imageLiteral(resourceName: "got")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func chooseButtonTapped(_ sender: Any) {
        
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "selectionScreen") as! SecondViewController //Creating an instance of the Selection View Controller
        selectionVC.selectionDelegate = self // setting the delegate to the instance of the view controller
        present(selectionVC, animated: true, completion: nil) //presenting the view controller instance
    }
}

extension ViewController: SideSelectionDelegate{
    func didTapChoice(image: UIImage, name: String, motto: String) {
        centerImage.image = image
        //if-else statement to adjust label for Lannister motto
        if motto.count < 22{
            topLabel.text = motto
        }
        else{
            topLabel.adjustsFontSizeToFitWidth = true
            topLabel.text = motto
        }
    }
}
